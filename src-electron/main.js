const { app, BrowserWindow, ipcMain, dialog } = require('electron');
const path = require('path');
const fs = require('fs').promises;
const nitpick = require('nitpick-node/build/Release/nitpick_addon');

function createWindow() {
    const mainWindow = new BrowserWindow({
        width: 1400,
        height: 800,
        webPreferences: {
            preload: path.join(__dirname, 'preload.js'),
            nodeIntegration: false,
            contextIsolation: true
        }
    });

    mainWindow.loadFile(path.join(__dirname, '../src-gui/index.html'));
}

async function getFiles(dir) {
    const dirents = await fs.readdir(dir, { withFileTypes: true });
    const files = await Promise.all(dirents.map((dirent) => {
        const res = path.resolve(dir, dirent.name);
        return dirent.isDirectory() ? getFiles(res) : res;
    }));
    return Array.prototype.concat(...files);
}

app.whenReady().then(() => {
    // Expose the nitpick-node bridge to the renderer via IPC
    ipcMain.handle('api:request', async (event, req) => {
        try {
            const response = nitpick.request(req);
            return response;
        } catch (error) {
            console.error('IPC request failed:', error);
            return { status: 0, error: error.message };
        }
    });

    // Handle Open Directory dialog
    ipcMain.handle('api:openDirectory', async () => {
        const result = await dialog.showOpenDialog({
            properties: ['openDirectory']
        });
        if (result.canceled) return null;
        
        const folderPath = result.filePaths[0];
        try {
            // Recursively get all files, but filter for .napit or .md files
            const allFiles = await getFiles(folderPath);
            const apiFiles = allFiles.filter(f => f.endsWith('.napit') || f.endsWith('.md'));
            
            // Map to simple structure
            return {
                workspacePath: folderPath,
                files: apiFiles.map(f => ({
                    path: f,
                    name: path.basename(f),
                    relativePath: path.relative(folderPath, f)
                }))
            };
        } catch (e) {
            console.error(e);
            return { workspacePath: folderPath, files: [] };
        }
    });

    // Handle Load Environments
    ipcMain.handle('api:loadEnvironments', async (event, workspacePath) => {
        try {
            const envFile = path.join(workspacePath, 'napit.env.json');
            const content = await fs.readFile(envFile, 'utf8');
            return JSON.parse(content);
        } catch (e) {
            // If file doesn't exist or is invalid JSON, return empty object
            return {};
        }
    });

    // Handle Read File
    ipcMain.handle('api:readFile', async (event, filePath) => {
        return await fs.readFile(filePath, 'utf8');
    });

    // Handle Save File
    ipcMain.handle('api:saveFile', async (event, filePath, content) => {
        await fs.writeFile(filePath, content, 'utf8');
        return true;
    });

    createWindow();
    app.on('activate', function () {
        if (BrowserWindow.getAllWindows().length === 0) createWindow();
    });
});

app.on('window-all-closed', function () {
    if (process.platform !== 'darwin') app.quit();
});
