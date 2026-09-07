@echo off
title WinServe Web Server
setlocal

md C:\Winserve\apps\heidisql 2>nul
md C:\Winserve\apps\memcached 2>nul
md C:\Winserve\apps\notepad++ 2>nul
md C:\Winserve\apps\phpmyadmin4 2>nul
md C:\Winserve\apps\sqlitemanager 2>nul

md C:\Winserve\etc\apache2\alias 2>nul
md C:\Winserve\etc\php\pear 2>nul
md C:\Winserve\etc\ssl 2>nul

md C:\Winserve\bin\apache\httpd-2.4.23-VC10 2>nul
md C:\Winserve\bin\mysql\mysql5.7.44 2>nul
md C:\Winserve\bin\php\php5.2.17 2>nul

md C:\Winserve\logs\xdebug 2>nul

md C:\Winserve\scripts 2>nul
md C:\Winserve\tmp 2>nul
md C:\Winserve\usr 2>nul
md C:\Winserve\www 2>nul

:: Arquivo principal de execução
> C:\Winserve\winserve.cmd (
    echo @echo off
    echo powershell -ExecutionPolicy Bypass -File "C:\Winserve\usr\winserve.ps1"
)

> C:\Winserve\usr\winserve.cmd (
    echo :: use this file to run your own startup commands
)

:: index.php de exemplo
echo ^<?php > C:\Winserve\www\index.php
echo phpinfo(); >> C:\Winserve\www\index.php
echo. >> C:\Winserve\www\index.php

type nul > C:\Winserve\logs\xdebug\xdebug.log
type nul > C:\Winserve\usr\winserve.ps1
