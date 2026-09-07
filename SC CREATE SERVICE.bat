:: MariaDB Server 10.6.7 AMD64
SC CREATE MariaDBServer type= own start= auto error= normal binPath= "C:\MariaDB\bin\mysqld.exe MariaDBServer" displayname= "MariaDB Server 10.6 AMD64"
SC DESCRIPTION MariaDBServer "MariaDB 10.6.7 for Win64 (AMD64)"

:: MySQL Server 5.7.35 Win32
SC CREATE wampmysqld type= own start= auto error= normal binPath= "c:\wamp\bin\mysql\mysql5.7.37\bin\mysqld.exe wampmysqld" displayname= "wampmysqld"
SC DESCRIPTION wampmysqld "MySQL Server 5.7.37 for Win32"