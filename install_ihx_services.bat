@echo off
@echo Instalando o servico de Banco de Dados MySQL
echo --------------------------------------------

sc create MySQLServerIHX type= own start= auto error= normal binpath= "C:\IHX_Sistemas\mysql\bin\mysqld.exe MySQLServerIHX" displayname= "MySQL IHX Sistemas"
sc description MySQLServerIHX "MariaDB Server 10.7.3 Win64 for IHX Sistemas"

sc create srvIHXService type= own start= auto error= normal binpath= "C:\IHX_Sistemas\IHXComunicador\IHXService.exe srvIHXService" displayname= "IHX Communicator Service"
sc description srvIHXService "IHX Communicator Service"

NET START MySQLServerIHX

NET START srvIHXService

pause
