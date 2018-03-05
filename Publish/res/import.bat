@echo off 
MEmuManage.exe list vms > c:/vms.txt

for /f "tokens=1,2 delims= " %%a in (c:/vms.txt) do (
echo %%a %%b 
MEmuManage.exe unregistervm %%b
)

rem set work_path = Z:\MEmu\MemuHyperv VMs\
D:
for /R D:\roms\ %%s in (*.memu) do ( 
echo %%s 
MEmuManage.exe registervm "%%s"
) 

MEmuManage.exe list vms > c:/vms.txt
