# Napit — Nitpick API Tool

Napit is a powerful, cross-platform desktop API client application designed to test and explore HTTP and GraphQL APIs with an offline-first mindset.

It utilizes `nitpick-node` as a native bridge, offloading core HTTP request handling, parsing, and execution to the native Nitpick backend (`nitpick-api`), while providing a modern, dynamic web frontend via Electron.

## Features

- **Markdown-based Request Editor**: Write requests rapidly using a markdown-like syntax with full syntax highlighting.
- **GraphQL Introspection & Auto-complete**: Auto-detects GraphQL queries, fetches the schema directly from your endpoint, and provides an interactive autocomplete dropdown menu for Types, Fields, and Arguments.
- **File-based Workspaces**: Save your requests directly as files. Workspaces are local directories, making version control (Git) straightforward.
- **Environment Variables**: Define and seamlessly switch between multiple environments. Inject variables into requests using `{{variable}}` syntax.
- **Autonomous AI Agent Harness**: A built-in AI Assistant (powered locally by Ollama `llama3.1`) lives in your sidebar. It can analyze your workspace, draft API requests, and even execute local terminal commands to help test your servers.
- **Request History**: Automatically caches your last 50 requests to `napit.history.json` and presents them in an interactive Drawer for easy reloading.
- **Code Generation**: Instantly generate code snippets for your API requests in Python, Go, Node.js, and cURL.

## Architecture

Napit is built with:
- **Frontend**: Electron (HTML/CSS/Vanilla JS)
- **Backend**: Node.js
- **Native Bridge**: `nitpick-node` (C++ Addon)
- **Core Library**: `nitpick-api` (Written in Nitpick Lang)

## Installation & Build Instructions

Ensure you have [Node.js](https://nodejs.org/) installed, as well as the native `nitpick-node` dependencies if building from source.

```bash
# Clone the repository
git clone https://github.com/alternative-intelligence-cp/napit.git
cd napit

# Install dependencies
npm install

# Start the application
npm start
```

## Usage Guide

1. **Open a Workspace**: Click **Open Workspace** in the top left. Select any folder on your machine. Napit will list all text files inside.
2. **Create Requests**: Create a file (e.g. `test.http`) and write your request inside the markdown block:
   ```http
   GET https://api.example.com/data
   Accept: application/json
   ```
3. **Environments**: Click the **Env** badge at the top to open the Environment Manager. Create variables and reference them in your requests with `{{my_var}}`.
4. **GraphQL**: For a GraphQL endpoint, type `query { ... }` and watch the **Fetch Schema** button appear. Click it to download the schema for immediate autocomplete.
5. **AI Assistant**: Click the **AI** badge in the sidebar to chat with your local AI agent for request drafting or debugging.

## License
AGPL v3
