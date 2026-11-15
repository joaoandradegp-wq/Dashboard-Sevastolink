@echo off
set "pasta=%~dp0"
set "pasta=%pasta:\=/%"
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --user-data-dir="%TEMP%\edge_monitor" --allow-file-access-from-files --app="file:///%pasta%index.html" --kiosk