const btn = document.getElementById('sendBtn');
const saveBtn = document.getElementById('saveBtn');
const openFolderBtn = document.getElementById('openFolderBtn');
const fileList = document.getElementById('fileList');
const output = document.getElementById('output');
const editor = document.getElementById('editor');
const statusBadge = document.getElementById('statusBadge');

let currentActiveFile = null;

// --- Sidebar Logic ---
openFolderBtn.addEventListener('click', async () => {
    const files = await window.api.openDirectory();
    if (!files) return; // User canceled
    
    fileList.innerHTML = '';
    
    if (files.length === 0) {
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
        const req = window.parseNapitFile(editor.value);
        
        const response = await window.api.request(req);
        
        if (response.status === 0) {
            output.textContent = `Native Exception:\n${response.error}`;
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
