/**
 * Parses a .napit (Markdown/HTTP) file to extract Method, URL, Headers, and Body.
 * If the file contains an ```http ... ``` code block, it extracts that block.
 * Otherwise, it attempts to parse the raw text.
 */
function parseNapitFile(content) {
    let text = content.trim();
    let isGraphql = false;

    // Extract from markdown code block if present
    const blockRegex = /```(http|graphql)?\s*\n([\s\S]*?)```/i;
    const match = text.match(blockRegex);
    if (match) {
        if (match[1] && match[1].toLowerCase() === 'graphql') {
            isGraphql = true;
        }
        text = match[2].trim();
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
        const colonIdx = line.indexOf(':');
        if (colonIdx > 0) {
            headersArr.push(line);
        }
        i++;
    }

    // Note: The C bridge takes a string like "Key: Value|Key2: Value2"
    let headers = headersArr.join('|');

    // 3. Parse Body
    let bodyArr = [];
    while (i < lines.length) {
        bodyArr.push(lines[i]);
        i++;
    }
    let body = bodyArr.join('\n').trim();

    if (isGraphql && body) {
        // Attempt to split body into query and variables.
        // We look for a JSON object at the end of the body.
        let query = body;
        let variables = null;

        // Find the last '{' that starts a line (likely the variables JSON)
        const lastBraceIdx = body.lastIndexOf('\n{');
        if (lastBraceIdx !== -1) {
            const possibleJson = body.substring(lastBraceIdx).trim();
            try {
                variables = JSON.parse(possibleJson);
                // If it successfully parses as JSON, the rest is the query
                query = body.substring(0, lastBraceIdx).trim();
            } catch (e) {
                // Not valid JSON, so the whole body is the query
            }
        } else if (body.startsWith('{') && body.endsWith('}')) {
             // Edge case: Maybe there's only variables? Unlikely for GraphQL.
             // Or maybe the query starts with { and has no variables.
             // We'll assume it's just a query.
        }

        const graphqlPayload = {
            query: query
        };
        if (variables) {
            graphqlPayload.variables = variables;
        }

        body = JSON.stringify(graphqlPayload);
        
        // Ensure Content-Type is application/json for GraphQL
        if (!headers.toLowerCase().includes('content-type')) {
            headers = headers ? headers + '|Content-Type: application/json' : 'Content-Type: application/json';
        }
    }

    return {
        method,
        url,
        headers,
        body
    };
}

// Export for browser
window.parseNapitFile = parseNapitFile;
