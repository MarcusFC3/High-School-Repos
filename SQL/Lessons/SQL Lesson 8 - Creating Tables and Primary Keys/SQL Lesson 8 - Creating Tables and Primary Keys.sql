--***DATA INTEGRITY***---

--Data Integrity 
	
	--Correctness, consistency and uniqueness of data
	--Duplicate info is not good
	--All rows must be unique
	
  --Entity Integrity (Primary Key)
    	--every table must have a primary key and that the column or columns chosen to be the primary key should be unique and not null.
	
  --Referential Integrity (Foreign Key)
    	--foreign-key value refers to a primary key value of some table in the database. 

  --Domain integrity / OR Column Integrity (Data Type)
        --A domain is a set of values of the same TYPE. 
  
   --User-defined Integrity 
        --set of rules specified by a user, which do not belong to the entity, domain and referential integrity categories.
		
--*** COnceptual to Physical Model Mapping ***---

--Data Types
			--Columns Hold specific types of data
			--T-SQL Data Types – see pdf attachment
			--7 Categories
				--Exact numeric
				--Approximate Numeric
				--Date and Time
				--Character Strings
				--Unicode Character Strings
				--Binary Strings
				--Other Data Types

--Primary Keys
			--Ensures no duplicates
			--First Name/Last Names example
			--Artificial Keys

--Constraints
			--Primary Key
			--Foreign Key
			--Unique
			--Check Constraint
				--Limit values on a column
				--Can apply more than one to a column



--Two ways to create tables
  --Code
  --Graphical
  
--CODE




--****DDL - Data Definition Language****

CREATE TABLE Example
(PersonID int,
LastName varchar(50),
FirstName varchar(25),
Age tinyint);

  --Make sure to refresh

  --Look at CREATE TABLE documentation
    --Lots of arguments
      --Create your table then modify?
      --Do it all from the start?
    


--CHANGING A TABLE

  -- To make a change to the structure of the
  -- table, we use the ALTER TABLE command

  --With Code:
  
ALTER TABLE Example
ADD Level tinyint NULL ;

     -- select * from Example
     -- look at columns

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
ALTER COLUMN column_name column_type;  --Data loss not allowed!!!


--GRAPHICAL TABLE CREATION

  --Right Click on 'Tables'
  	--New Table
  	--Add column names and data types and allow nulls if needed
    --Close
      --Prompted to save	
  
  --GRAPHICALLY ALTER TABLE
  
    --Expand table to change
    --Right Click - Select 'Design'
	  --Add MiddleName Column
	  --Drag column up
	  	--Try to close and save
	  	--Prevent saving changes
	  	
	  	--FIX
	  		--Tools - Options - Designer - Prevent saving changes...
	  		--Not great in production
	  		--Interrupts - Locks
	  		--Column order doesn't matter!!!!!

--DROPPING A TABLE
  --All Data - GONE
  --All Indexes, Triggers, Constraints - GONE
  --All permissions - GONE
  --Views and Stored Procedures stay (Dependency!)
  



  
DROP TABLE EXAMPLE
  --NO WARNING or VERIFICATION!!

  --Graphical Drop
    --Right Click - View Dependencies
    --Right Click Table - Delete
    --Create example table and View to see dependencies
    --Also get warning and option to view dependencies on delete (Drop)
  


--PRIMARY KEYS

-- Create a table named ExamplePK
-- and assign a Primary Key to the
-- LastName column

CREATE TABLE dbo.ExamplePK
 (PersonId int PRIMARY KEY,
 LastName varchar(50),
 FirstName varchar(25) );

 -- Using the Object Browser in Management Studio, 
 -- click on the Refresh icon at the top and then
 -- open the columns folder for the ExamplePK table
 -- and you should see a key icon in front of the
 -- PersonID column

CREATE TABLE dbo.ExamplePK2
 (PersonId int,
 LastName varchar(50),
 FirstName varchar(25) 
 CONSTRAINT PK_PersonID PRIMARY KEY (PersonID))

  
 -- You can also create a composite Primary Key
 -- (a Primary Key on more than one column) with 
 -- this code
 -- NOTE that we named this Primary Key PK_Person
 -- using 'CONSTRAINT PK_Person' in our code
 -- this gives the Primary Key a user-friendly name...
 -- If we don't name it, a non-user-friendly name is
 -- generated for us
 CREATE TABLE dbo.ExamplePK3
 (PersonId int,
 LastName varchar(50),
 FirstName varchar(25) 
 CONSTRAINT PK_Person PRIMARY KEY (PersonID, LastName) );

 -- Use the Object Browser to see the results...
 -- Don't forget to refresh first!
 
 --GRAPHICALLY
 	--Right click Table - Design
 	--Select column or columns
 	--Right click - Set primary Key
 
 	
 --Assignment
 
   --Create a table called Characters to keep track of characters in an RPG. 
   --The table should keep track of characterID,
   --first name, last name, class (e.g. bard, cleric, monk, fighter, magic user, thief),
   --and race (e.g. human, elf, dwarf, halfling). CharacterID should be the primary key
   --for the table. Use appropriate data types and name the primary key.
   
   --Create another table called equipment. The table should have an equipmentID column
   --as the primary key. Include name, description, cost and weight. Use appropriate
   --data types and name the primary key.
 
 
 
 
 