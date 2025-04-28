1.
BACKUP DATABASE [AdventureWorks2012]
TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\AdventureWorks2012.bak'
WITH NOFORMAT, NOINIT,  
NAME = N'AdventureWorks2012-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'AdventureWorks2012' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'AdventureWorks2012' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''AdventureWorks2012'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\AdventureWorks2012.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND

2.
CREATE TABLE AdventureWorks2012.dbo.Practice
(PracticeID int,
ExampleColumn varchar(50),
CONSTRAINT PK_PracticeID PRIMARY KEY (PracticeID))

INSERT INTO Practice
VALUES
('1','ExampleText123')

3.
BACKUP DATABASE [AdventureWorks2012] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\AdventureWorks2012.bak' 
WITH  DIFFERENTIAL, 
NOFORMAT, NOINIT,  
NAME = N'AdventureWorks2012-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'AdventureWorks2012' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'AdventureWorks2012' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''AdventureWorks2012'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\AdventureWorks2012.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND

4.
EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'AdventureWorks2012'
GO
use [master];
GO
USE [master]
GO
ALTER DATABASE [AdventureWorks2012] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
USE [master]
GO
/****** Object:  Database [AdventureWorks2012]    Script Date: 1/29/2024 10:47:04 AM ******/
DROP DATABASE [AdventureWorks2012]
GO

5.
USE [master]
RESTORE DATABASE [AdventureWorks2012] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\AdventureWorks2012.bak' WITH  FILE = 1,  NORECOVERY,  NOUNLOAD,  STATS = 5
RESTORE DATABASE [AdventureWorks2012] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\Backup\AdventureWorks2012.bak' WITH  FILE = 2,  NOUNLOAD,  STATS = 5