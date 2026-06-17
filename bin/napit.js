#!/usr/bin/env node

const nitpick = require('nitpick-node/build/Release/nitpick_addon');

const args = process.argv.slice(2);

if (args.includes('--gui')) {
    const { spawn } = require('child_process');
    const path = require('path');
    
    // Spawn electron process using the local node_modules install
    const electronPath = require('electron');
    const appPath = path.resolve(__dirname, '..');
    
    const child = spawn(electronPath, [appPath], {
        stdio: 'inherit',
        windowsHide: false
    });
    
    child.on('close', (code) => {
        process.exit(code);
    });
    return;
}

if (args.length < 2) {
    console.error("Usage: napit <METHOD> <URL> [BODY]");
    process.exit(1);
}

const method = args[0].toUpperCase();
const url = args[1];
const body = args[2] || "";

const req = {
    method: method,
    url: url,
    headers: "User-Agent: Napit-CLI/0.0.0",
    body: body
};

try {
    const response = nitpick.request(req);
    
    if (response.status === 0) {
        console.error(`Request failed. Error: ${response.error || "Unknown native error"}`);
        process.exit(1);
    }
    
    if (response.headers) {
        console.log("--- Headers ---");
        console.log(response.headers.trim());
        console.log("---------------\n");
    }

    try {
        const json = JSON.parse(response.body);
        console.log(JSON.stringify(json, null, 2));
    } catch (e) {
        console.log(response.body);
    }
} catch (e) {
    console.error("Native Addon Exception:", e);
    process.exit(1);
}
