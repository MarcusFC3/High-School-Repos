1.
INSERT INTO Characters
(CharacterID, LastName, FirstName, Class, Race)
VALUES
('1', 'Winnaberg', 'Jack', 'Warrior', 'Human')

INSERT INTO Characters
VALUES
('2','Pagnovich','Clyde','Barbarian','Giant')

INSERT INTO Characters
(LastName, FirstName, Race, Class, CharacterID)
VALUES
('Bookshire','Peter','Dwarf','Cleric','3')

2.
INSERT INTO dbo.Equipment
(EquipmentID, Name, Description, Cost, Weight)
VALUES
('1','Wooden Sword', '+5 Attack - A suprisingly sharp wooden sword', '10','5'),
('2','Healing Potion','+20 HP - A basic healing potion made of gentleberries','25','3'),
('3','One-Leaf Clover', '+1 Luck - A four leaf clover. Thats missing three leaves.','35','1'),
('4','Taped Wand', '+2 Spellcast - A broken wand held together by two pieces of tape', '15', '4')

3.
INSERT INTO dbo.Inventory
VALUES
('1','1'),
('1','2'),
('2','1'),
('2','3'),
('3','4'),
('3','3')

4.
SELECT ch.FirstName, ch.LastName, eq.Name
FROM Equipment AS eq, Characters As ch, Inventory AS inv
WHERE ch.CharacterID = inv.CharacterID AND eq.EquipmentID = inv.EquipmentID
ORDER BY ch.CharacterID

5.
UPDATE Inventory
SET EquipmentID = '4'
WHERE CharacterID = '2' AND EquipmentID = '1'

SELECT *
FROM Inventory
WHERE CharacterID = '2' AND EquipmentID = '1'

UPDATE Inventory
SET EquipmentID = '2'
WHERE CharacterID = '3' AND EquipmentID = '3'

SELECT *
FROM Inventory
WHERE CharacterID = '3' AND EquipmentID = '3'
6.
DELETE Inventory
FROM Inventory
WHERE CharacterID = '1' AND EquipmentID = '2'

SELECT * 
FROM Inventory
WHERE CharacterID = '1' AND EquipmentID = '2'