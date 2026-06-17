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
            statusBadge.textContent = "ERROR";
            statusBadge.className = "status-badge status-error";
            statusBadge.style.display = 'inline-block';
        } else {
            // Display status badge
            statusBadge.textContent = response.status;
            statusBadge.className = `status-badge ${response.status >= 200 && response.status < 300 ? 'status-success' : 'status-error'}`;
            statusBadge.style.display = 'inline-block';

            let bodyText = response.body;
            try {
                // Pretty print JSON
                bodyText = JSON.stringify(JSON.parse(response.body), null, 2);
                output.style.color = 'var(--text-main)'; // Brighten color on success
            } catch (e) {
                // Output raw text
                output.style.color = 'var(--text-dim)';
            }
            
            let headersText = response.headers ? response.headers.trim() : "Native headers currently unsupported";
            output.textContent = `${bodyText}`;
        }
    } catch (err) {
        output.textContent = `Parse/IPC Exception:\n${err.message}`;
        statusBadge.textContent = "PARSE ERR";
        statusBadge.className = "status-badge status-error";
        statusBadge.style.display = 'inline-block';
    }

    btn.disabled = false;
});
