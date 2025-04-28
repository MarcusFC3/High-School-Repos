
--DML
--DML is abbreviation of Data Manipulation Language.
--It is used to retrieve, store, modify, delete, insert and update data in database.
--Examples: SELECT, UPDATE, INSERT statements

--DDL
--DDL is abbreviation of Data Definition Language. 
--It is used to create and modify the structure of database objects in database.
--Examples: CREATE, ALTER, DROP statements

--DCL
--DCL is abbreviation of Data Control Language. 
--It is used to create roles, permissions, and referential integrity 
--as well it is used to control access to database by securing it.
--Examples: GRANT, REVOKE statements
--Coming in a future lesson

--TCL
--TCL is abbreviation of Transactional Control Language. It is used to manage different transactions occurring within a database.
--Examples: COMMIT, ROLLBACK statements




--TRANSACTIONS (TCL)


--Simple transaction and locking example

--Let's begin a transaction
--And perform an update...a bad update!
BEGIN TRAN ML
UPDATE Person.Person
SET LastName='Long'

--Oh no! All LastNames were changed...
select * from Person.Person

--Let's ROLLBACK our transaction and undo our UPDATE 
ROLLBACK TRAN ML

--The orginal data is back
select * from Person.Person




--Let's look at locking

--Let's start a transaction in this connection
BEGIN TRAN MTL
UPDATE Person.Person
SET FirstName='Jack'
WHERE FirstName='Terri' and LastName='Duffy'

--When you have executed the two lines above...
--Click the New Query button (this will create a new connection)
--IN THE NEW QUERY WINDOW...type this
SELECT * from Person.Person
WHERE BusinessEntityID=2
--Note that the select statement will not complete...it just sits there
--It is being blocked by the UPDATE statement

--Return to the first query window and execute this...
COMMIT TRANSACTION MTL



--When you return to the UPDATE query window,
--the command will be completed...
--It executed as soon as you removed the lock
--by committing the select transaction named MTL

commit tran MTL


