1.
CREATE TABLE Inventory
(CharacterID int,
EquipmentID int
CONSTRAINT FK_Inventory_Characters FOREIGN KEY (CharacterID)
	REFERENCES Characters (CharacterID)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT FK_Inventory_Equipment FOREIGN KEY (EquipmentID)
	REFERENCES Equipment (EquipmentID)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT PK_InventoryID PRIMARY KEY (CharacterID, EquipmentID))

2.
CREATE NONCLUSTERED INDEX IX_CharacterNames ON Characters (LastName,FirstName)