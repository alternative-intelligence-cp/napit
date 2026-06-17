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
let currentWorkspacePath = null;
let requestHistory = [];

let openFiles = [];
let currentTabIndex = -1;
const editorTabs = document.getElementById('editorTabs');
const fetchSchemaBtn = document.getElementById('fetchSchemaBtn');
let currentGraphqlSchema = null;

function renderTabs() {
    editorTabs.innerHTML = '';
    if (openFiles.length === 0) {
        editorTabs.innerHTML = '<div style="font-size: 13px; color: var(--text-dim); padding: 4px;">No File Open</div>';
        editor.value = '';
        currentActiveFile = null;
        saveBtn.disabled = true;
        updateEditorHighlight();
        return;
    }
    
    openFiles.forEach((file, index) => {
        const tab = document.createElement('div');
        tab.className = `editor-tab ${index === currentTabIndex ? 'active' : ''}`;
        
        const title = document.createElement('span');
        title.textContent = file.name + (file.saved ? '' : ' *');
        
        const closeBtn = document.createElement('button');
        closeBtn.className = 'close-tab-btn';
        closeBtn.innerHTML = '&times;';
        
        closeBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            closeTab(index);
        });
        
        tab.appendChild(title);
        tab.appendChild(closeBtn);
        
        tab.addEventListener('click', () => switchTab(index));
        editorTabs.appendChild(tab);
    });
}

// --- Response Tabs Logic ---
const resBodyTab = document.getElementById('resBodyTab');
const resHeadersTab = document.getElementById('resHeadersTab');
const outputContainer = document.getElementById('outputContainer');
const headersContainer = document.getElementById('headersContainer');
const headersOutput = document.getElementById('headersOutput');

resBodyTab.addEventListener('click', () => {
    resBodyTab.classList.add('active');
    resHeadersTab.classList.remove('active');
    outputContainer.style.display = 'block';
    headersContainer.style.display = 'none';
});

resHeadersTab.addEventListener('click', () => {
    resHeadersTab.classList.add('active');
    resBodyTab.classList.remove('active');
    headersContainer.style.display = 'block';
    outputContainer.style.display = 'none';
});

function switchTab(index) {
    if (index < 0 || index >= openFiles.length) return;
    
    // Save current editor content to the outgoing tab
    if (currentTabIndex !== -1 && openFiles[currentTabIndex]) {
        openFiles[currentTabIndex].content = editor.value;
    }
    
    currentTabIndex = index;
    currentActiveFile = openFiles[index].path;
    editor.value = openFiles[index].content;
    
    saveBtn.disabled = openFiles[index].saved;
    
    renderTabs();
    updateEditorHighlight();
    
    // Update sidebar UI state
    document.querySelectorAll('.file-item').forEach(el => {
        if (el.title === currentActiveFile) {
            el.classList.add('active');
        } else {
            el.classList.remove('active');
        }
    });
}

function closeTab(index) {
    if (!openFiles[index].saved) {
        if (!confirm('You have unsaved changes. Close anyway?')) return;
    }
    
    openFiles.splice(index, 1);
    
    if (openFiles.length === 0) {
        currentTabIndex = -1;
        renderTabs();
        document.querySelectorAll('.file-item').forEach(el => el.classList.remove('active'));
    } else {
        if (index === currentTabIndex) {
            switchTab(Math.max(0, index - 1));
        } else if (index < currentTabIndex) {
            currentTabIndex--;
            renderTabs();
        } else {
            renderTabs();
        }
    }
}

// --- Sidebar Logic ---
openFolderBtn.addEventListener('click', async () => {
    const result = await window.api.openDirectory();
    if (!result) return; // User canceled
    
    const { workspacePath, files } = result;
    currentWorkspacePath = workspacePath;
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
    
    // Load history
    try {
        const histData = await window.api.readFile(`${workspacePath}/napit.history.json`);
        requestHistory = JSON.parse(histData);
    } catch (err) {
        requestHistory = [];
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
            // Check if already open
            let existingIdx = openFiles.findIndex(of => of.path === f.path);
            if (existingIdx !== -1) {
                switchTab(existingIdx);
                return;
            }
            
            // Load file content
            const content = await window.api.readFile(f.path);
            openFiles.push({
                path: f.path,
                name: f.name,
                content: content,
                saved: true
            });
            switchTab(openFiles.length - 1);
        });
        
        fileList.appendChild(li);
    });
});

// --- Editor Logic ---
saveBtn.addEventListener('click', async () => {
    if (!currentActiveFile || currentTabIndex === -1) return;
    
    const originalText = saveBtn.textContent;
    saveBtn.textContent = 'Saving...';
    saveBtn.disabled = true;
    
    try {
        await window.api.saveFile(currentActiveFile, editor.value);
        
        openFiles[currentTabIndex].content = editor.value;
        openFiles[currentTabIndex].saved = true;
        renderTabs();
        
        saveBtn.textContent = 'Saved!';
        setTimeout(() => {
            saveBtn.textContent = originalText;
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
    if (currentTabIndex !== -1) {
        if (openFiles[currentTabIndex].saved) {
            openFiles[currentTabIndex].saved = false;
            renderTabs();
            saveBtn.disabled = false;
        }
    }
});

// --- Request Execution Logic ---
const runAllBtn = document.getElementById('runAllBtn');

// Helper to extract nested json path
function extractPath(obj, path) {
    return path.split('.').reduce((acc, part) => acc && acc[part], obj);
}

async function executeRequest(req, selectedEnv) {
    let rawReq = { ...req };
    
    if (selectedEnv && environments[selectedEnv]) {
        const envVars = environments[selectedEnv];
        const interpolate = (str) => {
            if (!str) return str;
            return str.replace(/\{\{([^}]+)\}\}/g, (match, varName) => {
                const key = varName.trim();
                return envVars[key] !== undefined ? envVars[key] : match;
            });
        };
        rawReq.url = interpolate(rawReq.url);
        rawReq.headers = interpolate(rawReq.headers);
        rawReq.body = interpolate(rawReq.body);
    }
    
    const response = await window.api.request(rawReq);
    
    // Save to history
    if (response && response.status > 0) {
        requestHistory.unshift({
            timestamp: Date.now(),
            method: req.method,
            url: req.url,
            status: response.status,
            reqText: req.rawText || ''
        });
        if (requestHistory.length > 50) requestHistory.pop();
        if (currentWorkspacePath) {
            window.api.saveFile(`${currentWorkspacePath}/napit.history.json`, JSON.stringify(requestHistory, null, 2));
        }
    }
    
    return response;
}

function handleResponseUI(response) {
    if (response.status <= 0) {
        output.textContent = `Native Exception (Status ${response.status}):\n${response.error || 'Connection failed or host unreachable'}`;
        output.className = "";
        statusBadge.textContent = "ERROR";
        statusBadge.className = "status-badge status-error";
        statusBadge.style.display = 'inline-block';
        return null;
    } else {
        statusBadge.textContent = response.status;
        statusBadge.className = `status-badge ${response.status >= 200 && response.status < 300 ? 'status-success' : 'status-error'}`;
        statusBadge.style.display = 'inline-block';
        if (response.error) {
            output.textContent = response.error;
            output.className = 'language-plaintext';
            headersOutput.textContent = response.headers || '';
        } else {
            try {
                const parsed = JSON.parse(response.body);
                output.textContent = JSON.stringify(parsed, null, 2);
                output.className = 'language-json';
            } catch (e) {
                output.textContent = response.body;
                output.className = 'language-plaintext';
            }
            headersOutput.textContent = response.headers || '';
        }
        
        hljs.highlightElement(output);
        if (response.headers) hljs.highlightElement(headersOutput);
        
        try {
            return JSON.parse(response.body);
        } catch (e) { return null; }
    }
}

btn.addEventListener('click', async () => {
    output.style.color = 'var(--text-dim)';
    output.textContent = "Loading...\nSending native request via Nitpick bridge...";
    btn.disabled = true;
    runAllBtn.disabled = true;
    statusBadge.style.display = 'none';

    try {
        const requests = window.parseNapitFile(editor.value);
        const cursorPosition = editor.selectionStart;
        
        // Find which block the cursor is in. Fallback to first block if not found inside any.
        let targetReq = requests[0];
        for (const req of requests) {
            if (cursorPosition >= req.startIdx && cursorPosition <= req.endIdx) {
                targetReq = req;
                break;
            }
        }
        
        const response = await executeRequest(targetReq, envSelect.value);
        handleResponseUI(response);
    } catch (err) {
        output.textContent = `Parse/IPC Exception:\n${err.message}`;
        output.className = "";
        statusBadge.textContent = "PARSE ERR";
        statusBadge.className = "status-badge status-error";
        statusBadge.style.display = 'inline-block';
    }

    btn.disabled = false;
    runAllBtn.disabled = false;
});

runAllBtn.addEventListener('click', async () => {
    output.style.color = 'var(--text-dim)';
    output.textContent = "Running Flow...\nExecuting multiple requests sequentially...";
    btn.disabled = true;
    runAllBtn.disabled = true;
    statusBadge.style.display = 'none';

    try {
        const requests = window.parseNapitFile(editor.value);
        const selectedEnv = envSelect.value;
        
        // Create a temporary environment context so we don't mutate the global one permanently if it fails
        if (selectedEnv && !environments[selectedEnv]) {
             environments[selectedEnv] = {};
        }
        
        let lastParsedJson = null;

        for (let i = 0; i < requests.length; i++) {
            const req = requests[i];
            output.textContent = `Running Request ${i + 1}/${requests.length}: ${req.method} ${req.url}...`;
            
            const response = await executeRequest(req, selectedEnv);
            lastParsedJson = handleResponseUI(response);
            
            // If it failed and returned status <= 0, stop flow
            if (response.status <= 0) break;
            
            // Handle Extraction
            if (req.extraction && lastParsedJson && selectedEnv) {
                const extractedValue = extractPath(lastParsedJson, req.extraction.path);
                if (extractedValue) {
                    environments[selectedEnv][req.extraction.varName] = extractedValue;
                }
            }
        }
    } catch (err) {
        output.textContent = `Flow Exception:\n${err.message}`;
        output.className = "";
        statusBadge.textContent = "FLOW ERR";
        statusBadge.className = "status-badge status-error";
        statusBadge.style.display = 'inline-block';
    }

    btn.disabled = false;
    runAllBtn.disabled = false;
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
        
        const requests = window.parseNapitFile(rawText);
        const cursorPosition = editor.selectionStart;
        let req = requests[0];
        for (const r of requests) {
            if (cursorPosition >= r.startIdx && cursorPosition <= r.endIdx) {
                req = r;
                break;
            }
        }
        
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
        const requests = window.parseNapitFile(rawText);
        const cursorPosition = editor.selectionStart;
        let req = requests[0];
        for (const r of requests) {
            if (cursorPosition >= r.startIdx && cursorPosition <= r.endIdx) {
                req = r;
                break;
            }
        }
        
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

// --- Environment Manager Logic ---
const envModal = document.getElementById('envModal');
const closeEnvModalBtn = document.getElementById('closeEnvModalBtn');
const manageEnvBtn = document.getElementById('manageEnvBtn');
const addEnvBtn = document.getElementById('addEnvBtn');
const envList = document.getElementById('envList');
const varList = document.getElementById('varList');
const varListHeader = document.getElementById('varListHeader');
const addVarBtn = document.getElementById('addVarBtn');
const deleteEnvBtn = document.getElementById('deleteEnvBtn');
const saveEnvBtn = document.getElementById('saveEnvBtn');

let editingEnvironments = {};
let selectedEnvToEdit = null;

manageEnvBtn.addEventListener('click', () => {
    editingEnvironments = JSON.parse(JSON.stringify(environments));
    selectedEnvToEdit = null;
    renderEnvManager();
    renderVarManager();
    envModal.style.display = 'flex';
});

closeEnvModalBtn.addEventListener('click', () => {
    envModal.style.display = 'none';
});

function renderEnvManager() {
    envList.innerHTML = '';
    const keys = Object.keys(editingEnvironments);
    keys.forEach(envName => {
        const li = document.createElement('li');
        li.className = `file-item ${envName === selectedEnvToEdit ? 'active' : ''}`;
        li.textContent = envName;
        li.addEventListener('click', () => {
            selectedEnvToEdit = envName;
            renderEnvManager();
            renderVarManager();
        });
        envList.appendChild(li);
    });
    
    if (selectedEnvToEdit) {
        deleteEnvBtn.style.display = 'block';
        addVarBtn.disabled = false;
        varListHeader.textContent = `Variables in ${selectedEnvToEdit}`;
    } else {
        deleteEnvBtn.style.display = 'none';
        addVarBtn.disabled = true;
        varListHeader.textContent = `Variables`;
    }
}

function renderVarManager() {
    varList.innerHTML = '';
    if (!selectedEnvToEdit) {
        varList.innerHTML = '<div style="color: var(--text-dim); font-size: 13px;">Select an environment to edit its variables.</div>';
        return;
    }
    
    const envVars = editingEnvironments[selectedEnvToEdit];
    const keys = Object.keys(envVars);
    
    if (keys.length === 0) {
        varList.innerHTML = '<div style="color: var(--text-dim); font-size: 13px;">No variables defined. Click + Add to create one.</div>';
        return;
    }
    
    keys.forEach(key => {
        const row = document.createElement('div');
        row.style.display = 'flex';
        row.style.gap = '8px';
        
        const keyInput = document.createElement('input');
        keyInput.className = 'chat-input';
        keyInput.style.flex = '1';
        keyInput.value = key;
        
        const valInput = document.createElement('input');
        valInput.className = 'chat-input';
        valInput.style.flex = '2';
        valInput.value = envVars[key];
        
        const delBtn = document.createElement('button');
        delBtn.innerHTML = '&times;';
        delBtn.style.background = 'none';
        delBtn.style.border = 'none';
        delBtn.style.color = 'var(--error-color)';
        delBtn.style.cursor = 'pointer';
        delBtn.style.fontSize = '16px';
        
        keyInput.addEventListener('change', () => {
            const newKey = keyInput.value.trim();
            if (newKey && newKey !== key) {
                envVars[newKey] = envVars[key];
                delete envVars[key];
                renderVarManager();
            }
        });
        
        valInput.addEventListener('input', () => {
            envVars[keyInput.value.trim()] = valInput.value;
        });
        
        delBtn.addEventListener('click', () => {
            delete envVars[key];
            renderVarManager();
        });
        
        row.appendChild(keyInput);
        row.appendChild(valInput);
        row.appendChild(delBtn);
        varList.appendChild(row);
    });
}

addEnvBtn.addEventListener('click', () => {
    const name = prompt('Environment Name (e.g. dev, prod):');
    if (name && name.trim()) {
        const trimmed = name.trim();
        if (!editingEnvironments[trimmed]) {
            editingEnvironments[trimmed] = {};
        }
        selectedEnvToEdit = trimmed;
        renderEnvManager();
        renderVarManager();
    }
});

addVarBtn.addEventListener('click', () => {
    if (!selectedEnvToEdit) return;
    let newKey = 'NEW_VAR';
    let counter = 1;
    while (editingEnvironments[selectedEnvToEdit][newKey] !== undefined) {
        newKey = `NEW_VAR_${counter}`;
        counter++;
    }
    editingEnvironments[selectedEnvToEdit][newKey] = '';
    renderVarManager();
});

deleteEnvBtn.addEventListener('click', () => {
    if (!selectedEnvToEdit) return;
    if (confirm(`Delete environment '${selectedEnvToEdit}'?`)) {
        delete editingEnvironments[selectedEnvToEdit];
        selectedEnvToEdit = null;
        renderEnvManager();
        renderVarManager();
    }
});

// Helper for cross-platform path joining
function joinPath(p1, p2) {
    if (p1.endsWith('/') || p1.endsWith('\\')) return p1 + p2;
    return p1 + '/' + p2;
}

saveEnvBtn.addEventListener('click', async () => {
    if (!currentWorkspacePath) return;
    
    const envFilePath = joinPath(currentWorkspacePath, 'napit.env.json');
    try {
        const originalText = saveEnvBtn.textContent;
        saveEnvBtn.textContent = 'Saving...';
        saveEnvBtn.disabled = true;
        
        await window.api.saveFile(envFilePath, JSON.stringify(editingEnvironments, null, 2));
        environments = editingEnvironments;
        
        const currentSelection = envSelect.value;
        const envKeys = Object.keys(environments);
        if (envKeys.length > 0) {
            envSelect.innerHTML = '<option value="" style="background: #121212; color: #fff;">No Environment</option>';
            envKeys.forEach(envName => {
                const opt = document.createElement('option');
                opt.value = envName;
                opt.textContent = envName;
                opt.style.background = '#121212';
                opt.style.color = '#ffffff';
                envSelect.appendChild(opt);
            });
            envContainer.style.display = 'block';
            if (envKeys.includes(currentSelection)) {
                envSelect.value = currentSelection;
            }
        } else {
            envSelect.innerHTML = '<option value="">No Environment</option>';
            // Don't hide the container so they can still click Manage
            envContainer.style.display = 'block'; 
        }
        
        saveEnvBtn.textContent = 'Saved!';
        setTimeout(() => {
            saveEnvBtn.textContent = originalText;
            saveEnvBtn.disabled = false;
            envModal.style.display = 'none';
        }, 1000);
        
    } catch (e) {
        alert("Failed to save: " + e.message);
        saveEnvBtn.disabled = false;
        saveEnvBtn.textContent = 'Save Changes to napit.env.json';
    }
});

// --- Editor Syntax Highlighting & Sync ---
const editorHighlight = document.getElementById('editorHighlight');
const autocompleteMenu = document.getElementById('autocompleteMenu');
let autocompleteActive = false;
let autocompleteIndex = 0;
let autocompletePrefix = "";
let autocompleteStartIdx = 0;
let filteredVars = [];

function getCaretCoordinates(element, position) {
    const div = document.createElement('div');
    const computed = window.getComputedStyle(element);
    
    // Copy necessary styles for text measurement
    ['fontFamily', 'fontSize', 'fontWeight', 'lineHeight', 'paddingTop', 'paddingRight', 'paddingBottom', 'paddingLeft', 'borderTopWidth', 'borderRightWidth', 'borderBottomWidth', 'borderLeftWidth', 'boxSizing'].forEach(prop => {
        div.style[prop] = computed[prop];
    });
    
    div.style.position = 'absolute';
    div.style.visibility = 'hidden';
    div.style.whiteSpace = 'pre-wrap';
    div.style.wordWrap = 'break-word';
    div.style.width = computed.width;
    
    div.textContent = element.value.substring(0, position);
    
    const span = document.createElement('span');
    span.textContent = element.value.substring(position) || '.';
    div.appendChild(span);
    
    document.body.appendChild(div);
    const coordinates = {
        top: span.offsetTop + parseInt(computed.borderTopWidth || 0),
        left: span.offsetLeft + parseInt(computed.borderLeftWidth || 0),
        height: parseInt(computed.lineHeight || computed.fontSize)
    };
    document.body.removeChild(div);
    return coordinates;
}

function showAutocomplete() {
    const selectedEnv = envSelect.value;
    if (!selectedEnv || !environments[selectedEnv]) return hideAutocomplete();
    
    const envVars = Object.keys(environments[selectedEnv]);
    filteredVars = envVars.filter(v => v.toLowerCase().startsWith(autocompletePrefix.toLowerCase()));
    
    if (filteredVars.length === 0) return hideAutocomplete();
    
    autocompleteMenu.innerHTML = '';
    filteredVars.forEach((v, idx) => {
        const li = document.createElement('li');
        li.textContent = v;
        if (idx === autocompleteIndex) li.classList.add('selected');
        li.addEventListener('mousedown', (e) => {
            e.preventDefault(); // prevent editor blur
            insertAutocomplete(v);
        });
        autocompleteMenu.appendChild(li);
    });
    
    const coords = getCaretCoordinates(editor, editor.selectionStart);
    const rect = editor.getBoundingClientRect();
    
    autocompleteMenu.style.top = `${rect.top - editor.scrollTop + coords.top + coords.height + 5}px`;
    autocompleteMenu.style.left = `${rect.left - editor.scrollLeft + coords.left}px`;
    autocompleteMenu.style.display = 'block';
    autocompleteActive = true;
}

function hideAutocomplete() {
    autocompleteMenu.style.display = 'none';
    autocompleteActive = false;
    autocompleteIndex = 0;
}

function insertAutocomplete(val) {
    const currentPos = editor.selectionStart;
    const textBefore = editor.value.substring(0, autocompleteStartIdx);
    const textAfter = editor.value.substring(currentPos);
    
    editor.value = textBefore + val + '}}' + textAfter;
    editor.selectionStart = editor.selectionEnd = autocompleteStartIdx + val.length + 2;
    hideAutocomplete();
    updateEditorHighlight();
}

editor.addEventListener('input', () => {
    updateEditorHighlight();
    if (checkGraphQLAutocomplete()) {
        if (currentActiveFile) saveBtn.disabled = false;
        return;
    }
    
    // Autocomplete detection
    const textUpToCursor = editor.value.substring(0, editor.selectionStart);
    const match = textUpToCursor.match(/\{\{([a-zA-Z0-9_]*)$/);
    if (match) {
        autocompletePrefix = match[1];
        autocompleteStartIdx = editor.selectionStart - autocompletePrefix.length;
        showAutocomplete();
    } else {
        hideAutocomplete();
    }
    if (currentActiveFile) saveBtn.disabled = false;
});

editor.addEventListener('keydown', (e) => {
    if (autocompleteActive) {
        if (e.key === 'ArrowDown') {
            e.preventDefault();
            autocompleteIndex = (autocompleteIndex + 1) % filteredVars.length;
            showAutocomplete();
        } else if (e.key === 'ArrowUp') {
            e.preventDefault();
            autocompleteIndex = (autocompleteIndex - 1 + filteredVars.length) % filteredVars.length;
            showAutocomplete();
        } else if (e.key === 'Enter' || e.key === 'Tab') {
            e.preventDefault();
            insertAutocomplete(filteredVars[autocompleteIndex]);
        } else if (e.key === 'Escape') {
            hideAutocomplete();
        }
    } else {
        if (e.key === 'Tab') {
            e.preventDefault();
            const start = editor.selectionStart;
            const end = editor.selectionEnd;
            editor.value = editor.value.substring(0, start) + "    " + editor.value.substring(end);
            editor.selectionStart = editor.selectionEnd = start + 4;
            updateEditorHighlight();
        }
    }
});

// Hide autocomplete on blur/click outside
editor.addEventListener('blur', hideAutocomplete);
document.addEventListener('mousedown', (e) => {
    if (e.target !== editor && !autocompleteMenu.contains(e.target)) {
        hideAutocomplete();
    }
});

// Initialize highlight

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
    
    // Check for GraphQL to show Fetch Schema button
    const lowerVal = editor.value.toLowerCase();
    if (lowerVal.includes('graphql') || lowerVal.includes('query ') || lowerVal.includes('mutation ')) {
        if (fetchSchemaBtn) fetchSchemaBtn.style.display = 'inline-block';
    } else {
        if (fetchSchemaBtn) fetchSchemaBtn.style.display = 'none';
        if (autocompleteMenu) autocompleteMenu.style.display = 'none';
    }
}

// Sync scroll positions
editor.addEventListener('scroll', () => {
    editorHighlight.scrollTop = editor.scrollTop;
    editorHighlight.scrollLeft = editor.scrollLeft;
});

// Initialize highlight
updateEditorHighlight();

// --- GraphQL Auto-complete Logic ---
const INTROSPECTION_QUERY = `
  query IntrospectionQuery {
    __schema {
      types {
        name
        fields { name }
        inputFields { name }
      }
    }
  }
`;

function parseIntrospection(schema) {
    if (!schema || !schema.types) return [];
    let keywords = new Set();
    schema.types.forEach(t => {
        if (!t.name.startsWith('__')) {
            keywords.add(t.name);
            if (t.fields) t.fields.forEach(f => keywords.add(f.name));
            if (t.inputFields) t.inputFields.forEach(f => keywords.add(f.name));
        }
    });
    return Array.from(keywords);
}

if (fetchSchemaBtn) {
    fetchSchemaBtn.addEventListener('click', async () => {
        const reqStr = interpolate(editor.value);
        const parsed = window.parser.parseHttpRequest(reqStr);
        if (!parsed || !parsed.url) {
            alert("No valid URL found to fetch schema.");
            return;
        }
        
        fetchSchemaBtn.textContent = 'Fetching...';
        try {
            const introspectReq = {
                method: 'POST',
                url: parsed.url,
                headers: { 'Content-Type': 'application/json', 'Accept': 'application/json' },
                body: JSON.stringify({ query: INTROSPECTION_QUERY })
            };
            const res = await window.api.request(introspectReq);
            if (res && res.status === 200) {
                const data = JSON.parse(res.body);
                currentGraphqlSchema = parseIntrospection(data.data.__schema);
                fetchSchemaBtn.textContent = 'Schema Fetched!';
                setTimeout(() => { fetchSchemaBtn.textContent = 'Fetch Schema'; }, 2000);
            } else {
                alert(`Failed: ${res ? res.status : 'Unknown error'}`);
                fetchSchemaBtn.textContent = 'Fetch Schema';
            }
        } catch (e) {
            alert(e.message);
            fetchSchemaBtn.textContent = 'Fetch Schema';
        }
    });
}

function getWordAtCaret(text, pos) {
    const left = text.slice(0, pos).match(/\\w+$/);
    const right = text.slice(pos).match(/^\\w+/);
    const wordStart = left ? pos - left[0].length : pos;
    const word = (left ? left[0] : '') + (right ? right[0] : '');
    return { word, start: wordStart, length: word.length };
}

function checkGraphQLAutocomplete() {
    if (!currentGraphqlSchema || !autocompleteMenu) return false;
    
    const pos = editor.selectionStart;
    const { word, start, length } = getWordAtCaret(editor.value, pos);
    
    if (word.length < 2) {
        return false;
    }
    
    const matches = currentGraphqlSchema.filter(k => k.toLowerCase().includes(word.toLowerCase()) && k !== word);
    if (matches.length === 0) {
        return false;
    }
    
    const lines = editor.value.substr(0, pos).split('\n');
    const cursorX = lines[lines.length-1].length * 8;
    const cursorY = lines.length * 16;
    
    autocompleteMenu.style.left = `${Math.min(cursorX + 10, editor.clientWidth - 200)}px`;
    autocompleteMenu.style.top = `${cursorY + 5}px`;
    
    autocompleteMenu.innerHTML = '';
    matches.slice(0, 8).forEach(m => {
        const div = document.createElement('div');
        div.style.padding = '6px 12px';
        div.style.cursor = 'pointer';
        div.style.borderBottom = '1px solid rgba(255,255,255,0.05)';
        div.textContent = m;
        
        div.addEventListener('mouseover', () => div.style.background = 'var(--accent-color)');
        div.addEventListener('mouseout', () => div.style.background = 'transparent');
        
        div.addEventListener('click', () => {
            const before = editor.value.substring(0, start);
            const after = editor.value.substring(start + length);
            editor.value = before + m + after;
            updateEditorHighlight();
            autocompleteMenu.style.display = 'none';
            editor.focus();
            editor.selectionStart = editor.selectionEnd = start + m.length;
        });
        autocompleteMenu.appendChild(div);
    });
    
    autocompleteMenu.style.display = 'block';
    return true;
}

// --- History Modal Logic ---
const historyModal = document.getElementById('historyModal');
const historyBtn = document.getElementById('historyBtn');
const closeHistoryModalBtn = document.getElementById('closeHistoryModalBtn');
const historyTableBody = document.getElementById('historyTableBody');

function renderHistory() {
    historyTableBody.innerHTML = '';
    if (requestHistory.length === 0) {
        historyTableBody.innerHTML = '<tr><td colspan="5" style="padding: 10px; text-align: center; color: var(--text-dim);">No history yet.</td></tr>';
        return;
    }
    
    requestHistory.forEach((hist, index) => {
        const tr = document.createElement('tr');
        tr.style.borderBottom = '1px solid rgba(255,255,255,0.05)';
        
        const statusClass = hist.status >= 200 && hist.status < 300 ? 'status-success' : 'status-error';
        const d = new Date(hist.timestamp);
        
        tr.innerHTML = `
            <td style="padding: 8px 0;"><span class="status-badge ${statusClass}">${hist.status}</span></td>
            <td style="padding: 8px 0; color: var(--accent-color); font-weight: bold;">${hist.method}</td>
            <td style="padding: 8px 0; max-width: 200px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" title="${hist.url}">${hist.url}</td>
            <td style="padding: 8px 0; color: var(--text-dim);">${d.toLocaleTimeString()}</td>
            <td style="padding: 8px 0;"><button class="secondary-btn load-hist-btn" data-index="${index}" style="padding: 4px 8px; font-size: 11px;">Load</button></td>
        `;
        historyTableBody.appendChild(tr);
    });
    
    document.querySelectorAll('.load-hist-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
            const index = parseInt(e.target.getAttribute('data-index'), 10);
            const hist = requestHistory[index];
            if (hist && hist.reqText) {
                editor.value = hist.reqText + "\n\n" + editor.value;
                updateEditorHighlight();
                historyModal.style.display = 'none';
            }
        });
    });
}

historyBtn.addEventListener('click', () => {
    renderHistory();
    historyModal.style.display = 'flex';
});

closeHistoryModalBtn.addEventListener('click', () => {
    historyModal.style.display = 'none';
});

// --- AI Chat Logic ---
const toggleAiBtn = document.getElementById('toggleAiBtn');
const closeAiBtn = document.getElementById('closeAiBtn');
const clearChatBtn = document.getElementById('clearChatBtn');
const aiSidebar = document.getElementById('aiSidebar');
const chatHistory = document.getElementById('chatHistory');
const chatInput = document.getElementById('chatInput');
const sendChatBtn = document.getElementById('sendChatBtn');

let aiMessageHistory = [
    { role: 'system', content: 'You are an autonomous AI Agent embedded inside Napit (an Electron desktop app for making HTTP/GraphQL requests). You can write .napit files directly into the workspace using the write_file tool. Your goal is to help the user design and test API requests.' }
];

toggleAiBtn.addEventListener('click', () => {
    try {
        if (aiSidebar.style.display === 'none' || aiSidebar.style.display === '') {
            aiSidebar.style.display = 'flex';
        } else {
            aiSidebar.style.display = 'none';
        }
    } catch(e) {
        alert(e);
    }
});

closeAiBtn.addEventListener('click', () => {
    aiSidebar.style.display = 'none';
});

clearChatBtn.addEventListener('click', () => {
    aiMessageHistory = [
        { role: 'system', content: 'You are an autonomous AI Agent embedded inside Napit (an Electron desktop app for making HTTP/GraphQL requests). You can write .napit files directly into the workspace using the write_file tool. Your goal is to help the user design and test API requests.' }
    ];
    chatHistory.innerHTML = '<div class="chat-bubble assistant">Chat cleared. How can I help you write requests today?</div>';
});

function appendChatBubble(role, content) {
    const div = document.createElement('div');
    div.className = `chat-bubble ${role}`;
    div.textContent = content;
    chatHistory.appendChild(div);
    chatHistory.scrollTop = chatHistory.scrollHeight;
}

async function sendChatMessage() {
    const text = chatInput.value.trim();
    if (!text) return;

    if (!currentWorkspacePath) {
        alert("Please open a Workspace folder first so the AI knows where to write files.");
        return;
    }

    // Add user message
    appendChatBubble('user', text);
    aiMessageHistory.push({ role: 'user', content: text });
    chatInput.value = '';
    sendChatBtn.disabled = true;
    chatInput.disabled = true;

    // Loading indicator
    const loadingDiv = document.createElement('div');
    loadingDiv.className = 'chat-bubble assistant';
    loadingDiv.textContent = 'Thinking...';
    chatHistory.appendChild(loadingDiv);
    chatHistory.scrollTop = chatHistory.scrollHeight;

    try {
        const resultHistory = await window.api.chat(aiMessageHistory, currentWorkspacePath);
        aiMessageHistory = resultHistory;
        
        // Remove loading
        chatHistory.removeChild(loadingDiv);

        // Append new messages from agent and tools since the last user message
        // Find index of the user message we just sent
        const userMsgIndex = aiMessageHistory.findLastIndex(m => m.role === 'user' && m.content === text);
        if (userMsgIndex !== -1) {
            for (let i = userMsgIndex + 1; i < aiMessageHistory.length; i++) {
                const msg = aiMessageHistory[i];
                if (msg.role === 'assistant' && msg.content) {
                    appendChatBubble('assistant', msg.content);
                } else if (msg.role === 'tool') {
                    appendChatBubble('tool', `⚙️ [${msg.name}] ${msg.content}`);
                }
            }
        }
    } catch (err) {
        chatHistory.removeChild(loadingDiv);
        appendChatBubble('tool', `Error communicating with agent: ${err.message}`);
    }

    sendChatBtn.disabled = false;
    chatInput.disabled = false;
    chatInput.focus();
}

sendChatBtn.addEventListener('click', sendChatMessage);
chatInput.addEventListener('keydown', (e) => {
    if (e.key === 'Enter' && !e.shiftKey) {
        e.preventDefault();
        sendChatMessage();
    }
});
