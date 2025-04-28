--INDEXES

  --Indexes are special tables that the database can use to speed up the time it takes
  --to query a database. They work very much like the index of a book. However, they also
  --need to be updated each time the database object is updated, so they can slow down
  --updates and inserts while the index is being updated too.
  
  --CLUSTERED INDEXES
  
    --Each table can have only ONE clustered index. Clustered indexes define how all
    --of the data in the table will be stored. Since we can't store the data in more
    --than one way at a time, we can't heve more than ONE clustered index.
    
    --Clustered Indexes are automatically generated in MS-SQL server when the primary
    --key is created.
    
    -- Indexes are stored in a binary tree (B-tree). In a clustered index, the value
    --of the PK is used and the table is kept sorted by those values.
    
  --NON-CLUSTERED INDEXES
  
    --We can create as many non-clustered indexes on a table as we need. Non-clustered
    --indexes contain key values AND pointers to the data row that contains the key
    --value. Therefore, the pointer is referred to as the 'Row Locater'
    
     --CREATING INDEXES - SQL
     
     CREATE INDEX indexname ON tablename (columnname);
     CREATE NONCLUSTERED INDEX indexname ON tablename (columnname [, columnname]);
     
     
     
    --CREATING INDEXES - SSMS
    	
    	--Expand the table node in object Explorer where you want to create the index.
    	--Right click the indexes folder and select 'New Index' and pick the type
    	--Select the columns and give it a name
		
		
		
--***FOREIGN KEYS***	


--Limitations and Restrictions
  --A foreign key constraint does not have to be linked only to a primary key constraint 
  --in another table; it can also be defined to reference UNIQUE columns
 
  --FOREIGN KEY values must exist in the referenced column (Referential Integrity)
  --otherwise, a foreign key violation error message is returned.
  --consider making all relevant columns NOT NULL
  

--This example creates a table and defines a foreign key constraint on the column TempID
--that references the column SalesReasonID in the Sales.SalesReason table. 
  --The ON DELETE CASCADE and ON UPDATE CASCADE clauses are used to ensure that changes 
  --made to Sales.SalesReason table are automatically propagated 

CREATE TABLE Sales.TempSalesReason 
(TempID int NOT NULL, 
 Name nvarchar(50), 
 CONSTRAINT PK_TempSales PRIMARY KEY NONCLUSTERED (TempID), 
 CONSTRAINT FK_TempSales_SalesReason FOREIGN KEY (TempID) 
    REFERENCES Sales.SalesReason (SalesReasonID) 
    ON DELETE CASCADE
    ON UPDATE CASCADE)

  -- ON DELETE CASCADE and ON UPDATE CASCADE define the actions that the SQL Server 
  --takes when a user tries to delete or update a key to which existing foreign keys point
  --https://technet.microsoft.com/en-us/library/ms186973(v=sql.105).aspx

--To create a foreign key in an existing table

ALTER TABLE Sales.TempSalesReason 
ADD CONSTRAINT FK_TempSales_SalesReason FOREIGN KEY (TempID) 
    REFERENCES Sales.SalesReason (SalesReasonID) 
    ON DELETE CASCADE
    ON UPDATE CASCADE


--Using SQL Server Management Studio:
  --To create a foreign key relationship in Table Designer
  --In Object Explorer, right-click the table that will be on the foreign-key side 
  --of the relationship and click Design.

  --From the Table Designer menu, click Relationships.
  
  --In the Foreign-key Relationships dialog box, click Add.
	--The relationship appears in the Selected Relationship list with a system-provided 
	--name in the format FK_<tablename>_<tablename>, where tablename is the name of the 
	--foreign key table.	
	
  --Click the relationship in the Selected Relationship list.
  
  --Click Tables and Columns Specification in the grid to the right and 
  --click the ellipses (…) to the right of the property.
    --In the Tables and Columns dialog box, in the Primary Key drop-down list, choose 
    --the table that will be on the primary-key side of the relationship.
    --In the grid beneath, choose the columns contributing to the table's primary key. 
    --In the adjacent grid cell to the left of each column, choose the corresponding 
    --foreign-key column of the foreign-key table.
  --Table Designer suggests a name for the relationship. 
    --To change this name, edit the contents of the Relationship Name text box.
  --Choose OK to create the relationship.
  

    	
    --ASSIGNMENT
    --#1)
	--In our previous RPG tables there is a many-to-many relationship between
	--the characters and their equipment
	--create a table to act as an intersection entity containing CharacterID
	--and Equipment ID columns. Create the appropriate foreign keys in the
	--appropriate tables
	
	--#2)
	--Create a non-clustered index on the character names in the character table
	
	
	
	
	
	
	
	
	