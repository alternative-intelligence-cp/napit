function parseSingleBlock(blockText, isGraphql, startIdx, endIdx, extraction) {
    const lines = blockText.split('\n');
    if (lines.length === 0 || !lines[0].trim()) {
        throw new Error("Empty request block");
    }

    const requestLine = lines[0].trim().split(' ');
    const method = requestLine[0] ? requestLine[0].toUpperCase() : 'GET';
    const url = requestLine.length > 1 ? requestLine.slice(1).join(' ') : '';

    if (!url) {
        throw new Error("Invalid request line: Missing URL");
    }

    let i = 1;
    let headersArr = [];
    while (i < lines.length) {
        const line = lines[i].trim();
        if (line === '') {
            i++;
            break;
        }
        const colonIdx = line.indexOf(':');
        if (colonIdx > 0) {
            headersArr.push(line);
        }
        i++;
    }

    let headers = headersArr.join('|');

    let bodyArr = [];
    while (i < lines.length) {
        bodyArr.push(lines[i]);
        i++;
    }
    let body = bodyArr.join('\n').trim();

    if (isGraphql && body) {
        let query = body;
        let variables = null;

        const lastBraceIdx = body.lastIndexOf('\n{');
        if (lastBraceIdx !== -1) {
            const possibleJson = body.substring(lastBraceIdx).trim();
            try {
                variables = JSON.parse(possibleJson);
                query = body.substring(0, lastBraceIdx).trim();
            } catch (e) {
                // Not JSON
            }
        }

        const graphqlPayload = { query: query };
        if (variables) graphqlPayload.variables = variables;

        body = JSON.stringify(graphqlPayload);
        
        if (!headers.toLowerCase().includes('content-type')) {
            headers = headers ? headers + '|Content-Type: application/json' : 'Content-Type: application/json';
        }
    }

    return {
        method, url, headers, body, startIdx, endIdx, extraction
    };
}

function parseNapitFile(content) {
    let requests = [];
    
    if (!content.includes('```')) {
        // Fallback for single raw block
        requests.push(parseSingleBlock(content.trim(), false, 0, content.length, null));
        return requests;
    }

    const blockRegex = /```(http|graphql)?\s*\n([\s\S]*?)```/gi;
    let match;
    
    while ((match = blockRegex.exec(content)) !== null) {
        const isGraphql = match[1] && match[1].toLowerCase() === 'graphql';
        const blockText = match[2].trim();
        const startIdx = match.index;
        const endIdx = match.index + match[0].length;
        
        let extraction = null;
        const restOfFile = content.substring(endIdx);
        const nextBlockIdx = restOfFile.indexOf('```');
        const textUntilNextBlock = nextBlockIdx === -1 ? restOfFile : restOfFile.substring(0, nextBlockIdx);
        
        // Match @extract VAR = $.path
        const extractMatch = textUntilNextBlock.match(/@extract\s+([A-Za-z0-9_]+)\s*=\s*\$\.([a-zA-Z0-9_.]+)/);
        if (extractMatch) {
            extraction = {
                varName: extractMatch[1],
                path: extractMatch[2]
            };
        }
        
        requests.push(parseSingleBlock(blockText, isGraphql, startIdx, endIdx, extraction));
    }
    
    if (requests.length === 0) {
        throw new Error("No valid request blocks found.");
    }
    
    return requests;
}

// Export for browser
window.parseNapitFile = parseNapitFile;
