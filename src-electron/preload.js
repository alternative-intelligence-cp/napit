const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('api', {
    request: (reqArgs) => ipcRenderer.invoke('api:request', reqArgs)
});
