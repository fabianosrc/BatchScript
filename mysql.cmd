@echo off

set SERVICENAME=MariaDBServer
set DISPLAYNAME=MariaDB Community Server
set BASEDIR=C:\MariaDB\MariaDB-10.11
set DATADIR=C:\MariaDB\MariaDB-10.11\data

"%BASEDIR%\bin\mysqld.exe" --install "%SERVICENAME%" --defaults-file="%BASEDIR%\my.ini" --datadir="%DATADIR%" --port=3310

sc description "%SERVICENAME%" "MariaDB Community Server"
sc config "%SERVICENAME%" start= auto displayname= "%DISPLAYNAME%"

sc failure "%SERVICENAME%" actions= restart/60000/restart/60000/""/60000 reset= 86400
sc failureflag "%SERVICENAME%" 1

pause
