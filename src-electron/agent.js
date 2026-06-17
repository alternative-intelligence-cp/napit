const fs = require('fs');
const path = require('path');
const { exec } = require('child_process');

const OLLAMA_URL = 'http://localhost:11434/api/chat';
const MODEL = 'llama3'; // or whatever default model is configured, but let's hardcode for the stub

// Tools available to the agent
const tools = [
    {
        type: "function",
        function: {
            name: "read_file",
            description: "Reads the contents of a local file in the workspace.",
            parameters: {
                type: "object",
                properties: {
                    filename: {
                        type: "string",
                        description: "The name of the file to read (relative to workspace)."
                    }
                },
                required: ["filename"]
            }
        }
    },
    {
        type: "function",
        function: {
            name: "write_file",
            description: "Writes or overwrites a .napit file in the workspace.",
            parameters: {
                type: "object",
                properties: {
                    filename: {
                        type: "string",
                        description: "The name of the .napit file (relative to workspace)."
                    },
                    content: {
                        type: "string",
                        description: "The markdown/http content of the file."
                    }
                },
                required: ["filename", "content"]
            }
        }
    },
    {
        type: "function",
        function: {
            name: "run_command",
            description: "Executes a terminal command on the local system. Useful for starting servers (e.g. npm run dev), running tests, or checking file contents.",
            parameters: {
                type: "object",
                properties: {
                    command: {
                        type: "string",
                        description: "The shell command to execute."
                    }
                },
                required: ["command"]
            }
        }
    }
];

async function executeTool(toolCall, workspacePath) {
    const { name, arguments: args } = toolCall.function;
    
    try {
        if (name === 'read_file') {
            const target = path.join(workspacePath, args.filename);
            if (!target.startsWith(workspacePath)) return "Error: Path traversal not allowed.";
            if (!fs.existsSync(target)) return `Error: File ${args.filename} not found.`;
            return fs.readFileSync(target, 'utf-8');
        } 
        else if (name === 'write_file') {
            const target = path.join(workspacePath, args.filename);
            if (!target.startsWith(workspacePath)) return "Error: Path traversal not allowed.";
            fs.mkdirSync(path.dirname(target), { recursive: true });
            fs.writeFileSync(target, args.content, 'utf-8');
            return `Successfully wrote to ${args.filename}`;
        }
        else if (name === 'run_command') {
            return await new Promise((resolve) => {
                exec(args.command, { cwd: workspacePath }, (error, stdout, stderr) => {
                    let out = "";
                    if (stdout) out += `STDOUT:\n${stdout}\n`;
                    if (stderr) out += `STDERR:\n${stderr}\n`;
                    if (error) out += `ERROR:\n${error.message}\n`;
                    resolve(out || "Command executed successfully with no output.");
                });
            });
        }
        return `Error: Unknown tool ${name}`;
    } catch (e) {
        return `Error executing tool: ${e.message}`;
    }
}

async function chatWithAgent(messageHistory, workspacePath) {
    // Send request to Ollama
    const payload = {
        model: MODEL,
        messages: messageHistory,
        stream: false,
        tools: tools
    };

    try {
        const response = await fetch(OLLAMA_URL, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(payload)
        });

        if (!response.ok) {
            throw new Error(`Ollama HTTP Error: ${response.status}`);
        }

        const data = await response.json();
        const message = data.message;
        messageHistory.push(message);

        // Check for tool calls
        if (message.tool_calls && message.tool_calls.length > 0) {
            // Execute all tools
            for (const toolCall of message.tool_calls) {
                const result = await executeTool(toolCall, workspacePath);
                messageHistory.push({
                    role: "tool",
                    content: result,
                    name: toolCall.function.name
                });
            }
            // Recurse to get the agent's response after seeing tool results
            return await chatWithAgent(messageHistory, workspacePath);
        }

        // No tool calls, just return the history
        return messageHistory;
        
    } catch (error) {
        // Return error as an assistant message
        messageHistory.push({
            role: "assistant",
            content: `[Connection Error] Could not reach Ollama at ${OLLAMA_URL}. Ensure it is running. Error: ${error.message}`
        });
        return messageHistory;
    }
}

module.exports = {
    chatWithAgent
};
