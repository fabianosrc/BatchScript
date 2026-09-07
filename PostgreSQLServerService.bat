:: Create Windows Service for PostgreSQL-15-x64
SC CREATE PostgreSQL15ServerService type= own start= auto error= normal binPath= "\"C:\PostgreSQL\15\bin\pg_ctl.exe\" runservice -N "\"PostgreSQL15ServerService"\" -D "\"C:\PostgreSQL\15\data"\" -w" displayname= "PostgreSQL Database Server"
SC DESCRIPTION PostgreSQL15ServerService "Provides relational database storage."
PAUSE
