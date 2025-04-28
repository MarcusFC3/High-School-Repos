
CREATE TABLE AdventureWorks2012.dbo.Characters
(CharacterID int,
LastName varchar(50),
FirstName varchar(25),
Class varchar(30),
Race varchar(40)
CONSTRAINT PK_CharacterID PRIMARY KEY (CharacterID))

CREATE TABLE AdventureWorks2012.dbo.Equipment
(EquipmentID int,
Name varchar(50),
Description varchar(100),
Cost money,
Weight int
CONSTRAINT PK_EquipmentID PRIMARY KEY (EquipmentID))

ALTER TABLE AdventureWorks2012.dbo.Characters
ALTER COLUMN LastName varchar(50) NOT NULL

ALTER TABLE AdventureWorks2012.dbo.Characters
ALTER COLUMN FirstName varchar(25) NOT NULL

ALTER TABLE AdventureWorks2012.dbo.Characters
ALTER COLUMN Class varchar(30) NOT NULL

ALTER TABLE AdventureWorks2012.dbo.Characters
ALTER COLUMN Race varchar(40) NOT NULL

ALTER TABLE AdventureWorks2012.dbo.Equipment
ALTER COLUMN Name varchar(50) NOT NULL

ALTER TABLE AdventureWorks2012.dbo.Equipment
ALTER COLUMN Description Varchar(100) NOT NULL

ALTER TABLE AdventureWorks2012.dbo.Equipment
ALTER COLUMN Cost Money NOT NULL

ALTER TABLE AdventureWorks2012.dbo.Equipment
ALTER COLUMN Weight int NOT NULL

DROP TABLE AdventureWorks2012.dbo.Characters
DROP TABLE AdventureWorks2012.dbo.Equipment