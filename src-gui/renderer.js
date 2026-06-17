const btn = document.getElementById('sendBtn');
const saveBtn = document.getElementById('saveBtn');
const openFolderBtn = document.getElementById('openFolderBtn');
const fileList = document.getElementById('fileList');
const output = document.getElementById('output');
const editor = document.getElementById('editor');
const statusBadge = document.getElementById('statusBadge');
const envContainer = document.getElementById('envContainer');
const envSelect = document.getElementById('envSelect');

let currentActiveFile = null;
let environments = {};

// --- Sidebar Logic ---
openFolderBtn.addEventListener('click', async () => {
    const result = await window.api.openDirectory();
    if (!result) return; // User canceled
    
    const { workspacePath, files } = result;
    fileList.innerHTML = '';
    
    // Load environments
    environments = await window.api.loadEnvironments(workspacePath);
    const envKeys = Object.keys(environments);
    if (envKeys.length > 0) {
        envSelect.innerHTML = '<option value="">No Environment</option>';
        envKeys.forEach(envName => {
            const opt = document.createElement('option');
            opt.value = envName;
            opt.textContent = envName;
            opt.style.background = '#121212';
            opt.style.color = '#ffffff';
            envSelect.appendChild(opt);
        });
        envContainer.style.display = 'block';
    } else {
        envContainer.style.display = 'none';
        environments = {};
    }
    
    if (!files || files.length === 0) {
        fileList.innerHTML = '<li class="file-item" style="cursor:default">No .napit files found</li>';
        return;
    }
    
    files.forEach(f => {
        const li = document.createElement('li');
        li.className = 'file-item';
        li.textContent = f.relativePath;
        li.title = f.path;
        
        li.addEventListener('click', async () => {
            // Load file content
            const content = await window.api.readFile(f.path);
            editor.value = content;
            
            // Update UI state
            document.querySelectorAll('.file-item').forEach(el => el.classList.remove('active'));
            li.classList.add('active');
            
            currentActiveFile = f.path;
            saveBtn.disabled = false;
        });
        
        fileList.appendChild(li);
    });
});

// --- Editor Logic ---
saveBtn.addEventListener('click', async () => {
    if (!currentActiveFile) return;
    
    const originalText = saveBtn.textContent;
    saveBtn.textContent = 'Saving...';
    saveBtn.disabled = true;
    
    try {
        await window.api.saveFile(currentActiveFile, editor.value);
        saveBtn.textContent = 'Saved!';
        setTimeout(() => {
            saveBtn.textContent = originalText;
            saveBtn.disabled = false;
        }, 1500);
    } catch (e) {
        saveBtn.textContent = 'Error';
        console.error(e);
        setTimeout(() => {
            saveBtn.textContent = originalText;
            saveBtn.disabled = false;
        }, 2000);
    }
});

// Enable save button automatically on typing if a file is open
editor.addEventListener('input', () => {
    if (currentActiveFile) saveBtn.disabled = false;
});

// --- Request Logic ---
btn.addEventListener('click', async () => {
    output.style.color = 'var(--text-dim)';
    output.textContent = "Loading...\nSending native request via Nitpick bridge...";
    btn.disabled = true;
    statusBadge.style.display = 'none';

    try {
        let rawText = editor.value;
        const selectedEnv = envSelect.value;
        
        // Phase 3: Interpolation Pre-processor
        if (selectedEnv && environments[selectedEnv]) {
            const envVars = environments[selectedEnv];
            rawText = rawText.replace(/\{\{([^}]+)\}\}/g, (match, varName) => {
                const key = varName.trim();
                return envVars[key] !== undefined ? envVars[key] : match;
            });
        }
        
        const req = window.parseNapitFile(rawText);
        
        const response = await window.api.request(req);
        
        if (response.status <= 0) {
            output.textContent = `Native Exception (Status ${response.status}):\n${response.error || 'Connection failed or host unreachable'}`;
            output.className = ""; // Remove language-json class
            statusBadge.textContent = "ERROR";
            statusBadge.className = "status-badge status-error";
            statusBadge.style.display = 'inline-block';
        } else {
            // Display status badge
            statusBadge.textContent = response.status;
            statusBadge.className = `status-badge ${response.status >= 200 && response.status < 300 ? 'status-success' : 'status-error'}`;
            statusBadge.style.display = 'inline-block';

            let bodyText = response.body;
            let isJson = false;
            try {
                // Pretty print JSON
                bodyText = JSON.stringify(JSON.parse(response.body), null, 2);
                isJson = true;
            } catch (e) {
                // Not JSON, output raw
            }
            
            output.textContent = bodyText;
            if (isJson) {
                output.className = "language-json";
                hljs.highlightElement(output);
            } else {
                output.className = ""; // plain text
            }
        }
    } catch (err) {
        output.textContent = `Parse/IPC Exception:\n${err.message}`;
        output.className = ""; // Remove language-json class
        statusBadge.textContent = "PARSE ERR";
        statusBadge.className = "status-badge status-error";
        statusBadge.style.display = 'inline-block';
    }

    btn.disabled = false;
});

// --- cURL Export ---
const copyCurlBtn = document.getElementById('copyCurlBtn');
copyCurlBtn.addEventListener('click', async () => {
    try {
        let rawText = editor.value;
        const selectedEnv = envSelect.value;
        
        // Phase 3: Interpolation Pre-processor
        if (selectedEnv && environments[selectedEnv]) {
            const envVars = environments[selectedEnv];
            rawText = rawText.replace(/\{\{([^}]+)\}\}/g, (match, varName) => {
                const key = varName.trim();
                return envVars[key] !== undefined ? envVars[key] : match;
            });
        }
        
        const req = window.parseNapitFile(rawText);
        
        let curlCmd = `curl -X ${req.method} "${req.url}"`;
        
        if (req.headers) {
            // headers is a string separated by pipe '|' in our parser
            const headersArr = req.headers.split('|');
            headersArr.forEach(h => {
                if (h.trim()) curlCmd += ` \\\n  -H "${h.trim()}"`;
            });
        }
        
        if (req.body) {
            // Escape single quotes for bash
            const escapedBody = req.body.replace(/'/g, "'\\''");
            curlCmd += ` \\\n  -d '${escapedBody}'`;
        }
        
        await navigator.clipboard.writeText(curlCmd);
        
        const originalText = copyCurlBtn.textContent;
        copyCurlBtn.textContent = 'Copied!';
        setTimeout(() => copyCurlBtn.textContent = originalText, 1500);
    } catch (err) {
        console.error("Export failed:", err);
    }
});

// --- cURL Import ---
const importCurlBtn = document.getElementById('importCurlBtn');
importCurlBtn.addEventListener('click', async () => {
    try {
        const text = await navigator.clipboard.readText();
        if (!text || !text.trim().startsWith('curl')) {
            alert('Clipboard does not contain a valid curl command.');
            return;
        }
        
        // Very basic curl parser (for demonstration/v0.6.0)
        let method = 'GET';
        let url = '';
        let headers = [];
        let body = '';
        
        // Extract URL (assume it's the first thing starting with http)
        const urlMatch = text.match(/https?:\/\/[^\s"']+/);
        if (urlMatch) url = urlMatch[0];
        
        // Extract Method
        const methodMatch = text.match(/-X\s+([A-Z]+)/);
        if (methodMatch) method = methodMatch[1];
        
        // Extract Headers
        const headerRegex = /-H\s+["']([^"']+)["']/g;
        let hMatch;
        while ((hMatch = headerRegex.exec(text)) !== null) {
            headers.push(hMatch[1]);
        }
        
        // Extract Body (data)
        const bodyMatch = text.match(/--data\s+['"]([^'"]+)['"]|-d\s+['"]([^'"]+)['"]/);
        if (bodyMatch) {
            body = bodyMatch[1] || bodyMatch[2];
            if (method === 'GET') method = 'POST'; // curl defaults to POST if -d is present
        }
        
        let napitStr = "```http\n";
        napitStr += `${method} ${url}\n`;
        headers.forEach(h => napitStr += `${h}\n`);
        
        if (body) {
            napitStr += `\n${body}\n`;
        }
        napitStr += "```\n";
        
        editor.value = napitStr;
        updateEditorHighlight();
        
        if (currentActiveFile) saveBtn.disabled = false;
        
    } catch (err) {
        console.error("Import failed:", err);
        alert('Failed to read clipboard.');
    }
});

// --- Code Snippet Generator ---
const generateCodeBtn = document.getElementById('generateCodeBtn');
const codeModal = document.getElementById('codeModal');
const closeModalBtn = document.getElementById('closeModalBtn');
const tabBtns = document.querySelectorAll('.tab-btn');
const codeSnippet = document.getElementById('codeSnippet');
const copySnippetBtn = document.getElementById('copySnippetBtn');
let currentSnippet = '';

function generateSnippet(lang, req) {
    let code = '';
    const headers = req.headers ? req.headers.split('|').filter(h => h.trim()) : [];
    const hasHeaders = headers.length > 0;
    
    if (lang === 'javascript') {
        code = `fetch("${req.url}", {\n`;
        code += `  method: "${req.method}",\n`;
        if (hasHeaders) {
            code += `  headers: {\n`;
            headers.forEach(h => {
                const parts = h.split(':');
                if(parts.length >= 2) code += `    "${parts[0].trim()}": "${parts.slice(1).join(':').trim()}",\n`;
            });
            code += `  },\n`;
        }
        if (req.body) {
            code += `  body: JSON.stringify(${req.body.trim()}),\n`;
        }
        code += `})\n.then(response => response.json())\n.then(data => console.log(data))\n.catch(err => console.error(err));`;
    } 
    else if (lang === 'python') {
        code = `import requests\n\nurl = "${req.url}"\n`;
        if (hasHeaders) {
            code += `headers = {\n`;
            headers.forEach(h => {
                const parts = h.split(':');
                if(parts.length >= 2) code += `    "${parts[0].trim()}": "${parts.slice(1).join(':').trim()}",\n`;
            });
            code += `}\n`;
        }
        if (req.body) {
            code += `\npayload = ${req.body.trim()}\n`;
        }
        code += `\nresponse = requests.request("${req.method}", url${hasHeaders ? ', headers=headers' : ''}${req.body ? ', json=payload' : ''})\n`;
        code += `print(response.text)`;
    }
    else if (lang === 'go') {
        code = `package main\n\nimport (\n\t"fmt"\n\t"io/ioutil"\n\t"net/http"\n${req.body ? '\t"strings"\n' : ''})\n\nfunc main() {\n`;
        code += `\turl := "${req.url}"\n`;
        if (req.body) {
            const escapedBody = req.body.replace(/"/g, '\\"');
            code += `\tpayload := strings.NewReader("${escapedBody}")\n`;
            code += `\treq, _ := http.NewRequest("${req.method}", url, payload)\n`;
        } else {
            code += `\treq, _ := http.NewRequest("${req.method}", url, nil)\n`;
        }
        if (hasHeaders) {
            headers.forEach(h => {
                const parts = h.split(':');
                if(parts.length >= 2) code += `\treq.Header.Add("${parts[0].trim()}", "${parts.slice(1).join(':').trim()}")\n`;
            });
        }
        code += `\n\tres, _ := http.DefaultClient.Do(req)\n\tdefer res.Body.Close()\n\tbody, _ := ioutil.ReadAll(res.Body)\n\n\tfmt.Println(string(body))\n}`;
    }
    return code;
}

function updateSnippetView(lang) {
    try {
        let rawText = editor.value;
        const selectedEnv = envSelect.value;
        if (selectedEnv && environments[selectedEnv]) {
            const envVars = environments[selectedEnv];
            rawText = rawText.replace(/\{\{([^}]+)\}\}/g, (match, varName) => {
                const key = varName.trim();
                return envVars[key] !== undefined ? envVars[key] : match;
            });
        }
        const req = window.parseNapitFile(rawText);
        currentSnippet = generateSnippet(lang, req);
        
        codeSnippet.className = `language-${lang}`;
        codeSnippet.textContent = currentSnippet;
        
        // Remove previous highlight formatting
        codeSnippet.removeAttribute('data-highlighted');
        hljs.highlightElement(codeSnippet);
        
    } catch (err) {
        codeSnippet.textContent = `Error generating code:\n${err.message}`;
    }
}

generateCodeBtn.addEventListener('click', () => {
    codeModal.style.display = 'flex';
    const activeTab = document.querySelector('.tab-btn.active').getAttribute('data-lang');
    updateSnippetView(activeTab);
});

closeModalBtn.addEventListener('click', () => {
    codeModal.style.display = 'none';
});

tabBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
        tabBtns.forEach(b => b.classList.remove('active'));
        e.target.classList.add('active');
        updateSnippetView(e.target.getAttribute('data-lang'));
    });
});

copySnippetBtn.addEventListener('click', async () => {
    await navigator.clipboard.writeText(currentSnippet);
    const originalText = copySnippetBtn.textContent;
    copySnippetBtn.textContent = 'Copied!';
    setTimeout(() => copySnippetBtn.textContent = originalText, 1500);
});

// --- Editor Syntax Highlighting & Sync ---
const editorHighlight = document.getElementById('editorHighlight');

// Initialize highlight
hljs.registerLanguage('graphql', window.hljsBuiltin?.graphql || (() => {})); // Just in case it's packaged differently, though vendor script handles it

function updateEditorHighlight() {
    // Escape HTML from textarea
    let text = editor.value
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;");
    
    // Add an empty space to ensure last line highlights if it ends in newline
    if(text[text.length-1] === "\n") {
        text += " ";
    }
    
    // Detect if it's graphql to apply correct syntax class to the editor
    if (text.includes('```graphql')) {
        editorHighlight.className = "editor-highlight language-graphql";
    } else {
        editorHighlight.className = "editor-highlight language-http";
    }
    
    editorHighlight.innerHTML = text;
    editorHighlight.removeAttribute('data-highlighted');
    hljs.highlightElement(editorHighlight);
}

// Sync scroll positions
editor.addEventListener('scroll', () => {
    editorHighlight.scrollTop = editor.scrollTop;
    editorHighlight.scrollLeft = editor.scrollLeft;
});

// Update highlighting on input
editor.addEventListener('input', () => {
    updateEditorHighlight();
    if (currentActiveFile) saveBtn.disabled = false;
});

// Initialize highlight
updateEditorHighlight();
