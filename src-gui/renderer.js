const btn = document.getElementById('sendBtn');
const output = document.getElementById('output');

btn.addEventListener('click', async () => {
    output.textContent = "Loading...\nSending native request via Nitpick bridge...";
    btn.disabled = true;

    const req = {
        method: "GET",
        url: "https://httpbin.org/get",
        headers: "User-Agent: Napit-GUI/0.1.0",
        body: ""
    };

    try {
        const response = await window.api.request(req);
        
        if (response.status === 0) {
            output.textContent = `Error: ${response.error}`;
        } else {
            let bodyText = response.body;
            try {
                // Pretty print if JSON
                bodyText = JSON.stringify(JSON.parse(response.body), null, 2);
            } catch (e) {
                // Ignore, just use raw text
            }
            
            let headersText = response.headers ? response.headers.trim() : "Headers not yet supported by native bridge";
            
            output.textContent = `--- Status ---\n${response.status}\n\n--- Headers ---\n${headersText}\n\n--- Body ---\n${bodyText}`;
        }
    } catch (err) {
        output.textContent = `IPC Exception: ${err}`;
    }

    btn.disabled = false;
});
