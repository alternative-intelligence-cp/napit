const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('api', {
    request: (reqArgs) => ipcRenderer.invoke('api:request', reqArgs),
    openDirectory: () => ipcRenderer.invoke('api:openDirectory'),
    loadEnvironments: (workspacePath) => ipcRenderer.invoke('api:loadEnvironments', workspacePath),
    readFile: (path) => ipcRenderer.invoke('api:readFile', path),
    saveFile: (path, content) => ipcRenderer.invoke('api:saveFile', path, content),
    chat: (history, workspacePath) => ipcRenderer.invoke('api:chat', history, workspacePath)
});
