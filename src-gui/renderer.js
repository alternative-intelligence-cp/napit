const btn = document.getElementById('sendBtn');
const output = document.getElementById('output');
const editor = document.getElementById('editor');
const statusBadge = document.getElementById('statusBadge');

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
