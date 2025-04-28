
--Creating server login for new Windows user with Windows Authentication
USE [master]
GO
CREATE LOGIN [PC10\Jack] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
--Creating database user for Windows User
USE [AdventureWorks2012]
GO
CREATE USER [PC10\Jack] FOR LOGIN [PC10\Jack]
GO
USE [AdventureWorks2012]
GO
ALTER ROLE [Sales Associate] ADD MEMBER [PC10\Jack]
GO





-- Creating login with SQL authentication
USE [master]
GO
CREATE LOGIN [sammy] WITH PASSWORD=N'cat' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER SERVER ROLE [serveradmin] ADD MEMBER [sammy]
GO

--Giving Role Access
USE [AdventureWorks2012]
GO
CREATE USER [A.Ham] FOR LOGIN [A.Ham]
GO
USE [AdventureWorks2012]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [A.Ham]
GO
USE [AdventureWorks2012]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datawriter] TO [A.Ham]
GO

--Creating custom sales role and assigning it to someone
USE [AdventureWorks2012]
GO
CREATE ROLE [Sales Associate]
GO
USE [AdventureWorks2012]
GO
ALTER AUTHORIZATION ON SCHEMA::[Production] TO [Sales Associate]
GO
USE [AdventureWorks2012]
GO
ALTER AUTHORIZATION ON SCHEMA::[Sales] TO [Sales Associate]
GO
USE [AdventureWorks2012]
GO
ALTER ROLE [Sales Associate] ADD MEMBER [A.Ham]
GO
--Granting permissions at the table level
--With grant allows for user to give permission to others
use [AdventureWorks2012]
GO
GRANT SELECT ON [Person].[Person] TO [A.Ham] WITH GRANT OPTION 
GO
use [AdventureWorks2012]
GO
GRANT INSERT ON [Person].[Person] TO [A.Ham]
GO
use [AdventureWorks2012]
GO
GRANT UPDATE ON [Person].[Person] TO [A.Ham]
GO
--Giving Table Permissions to role
use [AdventureWorks2012]
GO
GRANT INSERT ON [Person].[Person] TO [Sales Associate]
GO
use [AdventureWorks2012]
GO
GRANT SELECT ON [Person].[Person] TO [Sales Associate]
GO
--Revoking Permissions
use [AdventureWorks2012]
GO
REVOKE INSERT ON [Person].[Person] TO [A.Ham]