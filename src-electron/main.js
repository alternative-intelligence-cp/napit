const { app, BrowserWindow, ipcMain } = require('electron');
const path = require('path');
const nitpick = require('nitpick-node/build/Release/nitpick_addon');

function createWindow() {
    const mainWindow = new BrowserWindow({
        width: 1200,
        height: 800,
        webPreferences: {
            preload: path.join(__dirname, 'preload.js'),
            nodeIntegration: false,
            contextIsolation: true
        }
    });

    mainWindow.loadFile(path.join(__dirname, '../src-gui/index.html'));
    
    // Open DevTools automatically for debugging during dev
    // mainWindow.webContents.openDevTools();
}

app.whenReady().then(() => {
    // Expose the nitpick-node bridge to the renderer via IPC
    ipcMain.handle('api:request', async (event, req) => {
        try {
            // Note: nitpick.request is currently a synchronous C++ call.
            // Wrapping it in an async IPC handler prevents it from blocking the renderer UI thread,
            // though it will block the main process during the HTTP call.
            const response = nitpick.request(req);
            return response;
        } catch (error) {
            console.error('IPC request failed:', error);
            return {
                status: 0,
                error: error.message || "Unknown IPC error"
            };
        }
    });

    createWindow();

    app.on('activate', function () {
        if (BrowserWindow.getAllWindows().length === 0) createWindow();
    });
});

app.on('window-all-closed', function () {
    if (process.platform !== 'darwin') app.quit();
});
