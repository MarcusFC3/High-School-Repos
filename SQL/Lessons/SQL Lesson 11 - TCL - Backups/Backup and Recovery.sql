--BACKUP AND RECOVERY

Types of Backups
	Full
	Differential
	Incremental – SQL Server does not do this one

Three Recovery Models – used to control amount of logging
	Simple/Snapshot – not for production – data warehouse
		Minimum logging
		No point-in-time restore (last full backup only)
		Does not disable logging – just truncates once a minute

	Bulk-Logged – Seldom used
		Some commands bulk logged
		Log cleared when trans log backed up
		Point-in-time recovery supported – except for bulk operations

	Full – not on data warehouse (bulk loading would be slow)
		Every operation logged
		Full Data Protection – Point-In-Time supported

 
CREATING A BACKUP

FULL BACKUP
BACKUP DATABASE AdventureWorks2012  
TO DISK = 'Z:\SQLServerBackups\AdventureWorks2012.Bak'  
   WITH FORMAT,    --formats and overwrites existing data
      MEDIANAME = 'Z_SQLServerBackups',   //gives it a name
      NAME = 'Full Backup of AdventureWorks2012';  //gives it a description

RESTORING A FULL BACKUP
	Returns to state of DB when backup was COMPLETED (not started)
		Includes transactions that happened while backing up
	Drops the existing DB before the restore starts
		No reason to create it first

RESTORE DATABASE [AdventureWorks2012]
FROM DISK = ‘c:\backup\AW.bak’
WITH REPLACE, STATS=10
	(Replace existing DB, show stats every 10 seconds)

	
 
CREATE DIFFERENTIAL BACKUP
BACKUP DATABASE MyAdvWorks   
   TO MyAdvWorks_1   
   WITH INIT;  

-- Time elapses.  
-- Create a differential database backup, appending the backup  
-- to the backup device containing the full database backup.
  
BACKUP DATABASE MyAdvWorks  
   TO MyAdvWorks_1  
   WITH DIFFERENTIAL;  



Restore Differential Backup
	Can’t be restored by itself
	Restored on top of a full backup
		Full restore must use NORECOVERY or STANDBY
		Then restore the most current differential
	
RESTORE DATABASE [AdventureWorks2012]
FROM DISK = ‘c:\backup\AW.bak’
WITH REPLACE, STATS=10, NORECOVERY
GO
RESTORE DATABASE [AdventureWorks2012]
FROM DISK = ‘c:\backup\diff.bak’
WITH STATS=10
GO

INCREMENTAL BACKUP – SQL SERVER doesn’t do them!!!

Transaction Log Restore
	Can restore transactions since last differential from log backup
	Must restore in order – Full – Differential – Trans logs IN ORDER

SSMS BACUP AND RESTORE LINKS
Full Backup
https://msdn.microsoft.com/en-us/library/ms187510.aspx
Differential Backup
https://msdn.microsoft.com/en-us/library/ms188248.aspx


Assignment: 
Perform a Full Backup your database. Screenshot!
Create a new table with data.
Perform a Differential backup of your database. Screenshot!
Delete your database. Screenshot!
Restore your database from the full and differential backups. Screenshot!
Send your screenshots showing successful completion of backup and restores.
		


