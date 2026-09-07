@echo off

:: MySQL Server 5.7.37 for Win32

sc create wampmysqld type= own start= auto error= normal binPath= "c:\wamp\bin\mysql\mysql5.7.37\bin\mysqld.exe wampmysqld" displayname= wampmysqld
sc description wampmysqld "MySQL 5.7.37 Win32 for WampServer"

pause
