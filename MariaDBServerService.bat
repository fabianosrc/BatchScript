:: Create Windows Service for MariaDB Server 10.11.11 AMD64
SC CREATE MariaDBServer type= own start= auto error= normal binPath= "\"C:\MariaDB\MariaDB-10.11\bin\mysqld.exe\" "\"MariaDBServer\" displayname= "MariaDB Database Server"
SC DESCRIPTION MariaDBServer "MariaDB Database Server"
PAUSE
