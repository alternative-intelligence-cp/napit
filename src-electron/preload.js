const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('api', {
    request: (reqArgs) => ipcRenderer.invoke('api:request', reqArgs),
    openDirectory: () => ipcRenderer.invoke('api:openDirectory'),
    readFile: (path) => ipcRenderer.invoke('api:readFile', path),
    saveFile: (path, content) => ipcRenderer.invoke('api:saveFile', path, content)
});
