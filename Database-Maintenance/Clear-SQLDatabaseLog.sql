-- Change DATABASENAME to your needs.
-- Script found at http://stackoverflow.com/a/15476656

USE DATABASENAME;
GO
-- Truncate the log by changing the database recovery model to SIMPLE.
ALTER DATABASE DATABASENAME
SET RECOVERY SIMPLE;
GO
-- Shrink the truncated log file to 1 MB.
DBCC SHRINKFILE (DATABASENAME_Log, 1);
GO
-- Reset the database recovery model.
ALTER DATABASE DATABASENAME
SET RECOVERY FULL;
GO
