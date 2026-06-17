/**
 * Parses a .napit (Markdown/HTTP) file to extract Method, URL, Headers, and Body.
 * If the file contains an ```http ... ``` code block, it extracts that block.
 * Otherwise, it attempts to parse the raw text.
 */
function parseNapitFile(content) {
    let text = content.trim();

    // Extract from markdown code block if present
    const httpBlockRegex = /```(?:http)?\s*\n([\s\S]*?)```/;
    const match = text.match(httpBlockRegex);
    if (match) {
        text = match[1].trim();
    }

    const lines = text.split('\n');
    if (lines.length === 0 || !lines[0].trim()) {
        throw new Error("Empty request file");
    }

    // 1. Parse Method and URL
    const requestLine = lines[0].trim().split(' ');
    const method = requestLine[0] ? requestLine[0].toUpperCase() : 'GET';
    const url = requestLine.length > 1 ? requestLine.slice(1).join(' ') : '';

    if (!url) {
        throw new Error("Invalid request line: Missing URL");
    }

    // 2. Parse Headers
    let i = 1;
    let headersArr = [];
    while (i < lines.length) {
        const line = lines[i].trim();
        if (line === '') {
            i++;
            break; // Empty line separates headers from body
        }
        // Expecting Key: Value
        const colonIdx = line.indexOf(':');
        if (colonIdx > 0) {
            headersArr.push(line);
        }
        i++;
    }

    // Join headers with a pipe "|" as expected by the nitpick-node bridge currently
    // Note: The C bridge takes a string like "Key: Value|Key2: Value2"
    const headers = headersArr.join('|');

    // 3. Parse Body
    let bodyArr = [];
    while (i < lines.length) {
        bodyArr.push(lines[i]);
        i++;
    }
    const body = bodyArr.join('\n').trim();

    return {
        method,
        url,
        headers,
        body
    };
}

// Export for browser
window.parseNapitFile = parseNapitFile;
