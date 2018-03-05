@echo off 
MEmuManage.exe list vms > c:/vms.txt

for /f "delims= " %%a in (c:/vms.txt) do (

echo %%a

MEmuManage.exe unregistervm %%a

)

set work_path = Z:\MEmu\MemuHyperv VMs\
Z:
for /R %work_path% %%s in (*.memu) do ( 
echo %%s 
MEmuManage.exe registervm "%%s"

) 

MEmuManage.exe list vms > c:/vms.txt
