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

// --- Editor Syntax Highlighting & Sync ---
const editorHighlight = document.getElementById('editorHighlight');

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
    
    editorHighlight.innerHTML = text;
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
