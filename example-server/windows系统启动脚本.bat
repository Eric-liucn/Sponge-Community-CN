@echo off
echo Windows系统Minecraft服务器自动重启脚本By@Eric12324

:runserver
echo 启动服务器
java -jar -Xms4G -Xmx8G forge-1.12.2-14.23.5.2855.jar
choice /c YN /d n /t 5 /n /m "将在5秒后重启，按[Y]键终止重启进程" 
if %errorlevel% == 1 exit

goto:runserver
