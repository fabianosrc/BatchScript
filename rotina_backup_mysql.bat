@echo off

SET J=%date:~-10,2%
SET A=%date:~-4%
SET M=%date:~-7,2%
SET H=%time:~0,2%
SET MN=%time:~3,2%
SET S=%time:~-5,2%

IF "%time:~0,1%"==" " SET H=%time:~1,1%

SET DIRETORIO=c:\backup_mysql

SET ARQUIVO=%DIRETORIO%\riviera_%J%_%M%_%A%_A_%H%_%MN%_%S%.SQL
SET ARQUIVORAR=%DIRETORIO%\riviera_%J%_%M%_%A%_A_%H%_%MN%_%S%.rar

IF NOT exist "%DIRETORIO%" md "%DIRETORIO%"

c:
cd \wamp\bin\mysql\mysql5.1.30\bin

mysqldump -h localhost -u root --password=m0ram0ra m_condominio > %ARQUIVO%

c:
cd \backup_mysql
move *.rar copiados
rar a %ARQUIVORAR%  %ARQUIVO%

rem
rem A copia para o f foi cancelada pois esta com erro no disco removivel. moreira 04/08/11
rem
rem move *.sql c:\backup_mysql
