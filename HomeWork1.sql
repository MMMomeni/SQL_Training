USE AdventureWorks2019

SELECT ProductID, Name, Color, ListPrice FROM Production.Product

SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE ListPrice NOT IN (0.00)

SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE Color IS NULL

SELECT ProductID, Name, Color, ListPrice FROM Production.Product WHERE Color IS NOT NULL

SELECT ProductID, Name, Color, ListPrice FROM Production.Product 
WHERE Color IS NOT NULL AND ListPrice > 0.00

SELECT Name + Color FROM Production.Product WHERE Color IS NOT NULL

Select Concat('NAME: ', Name, ' -- COLOR:', Color)
From Production.Product
WHERE Color IS NOT NULL

SELECT ProductID, Name FROM Production.Product where ProductID BETWEEN 400 AND 500

Select ProductID, Name, Color FROM Production.Product WHERE Color IN ('Black', 'Blue')

SELECT Name FROM Production.Product WHERE Name LIKE 'S%'

SELECT Name, ListPrice FROM Production.Product WHERE Name LIKE 'S%' AND ListPrice IN (0.00, 53.99)

SELECT Name, ListPrice FROM Production.Product WHERE Name LIKE 'S%' OR Name LIKE 'A%' ORDER BY Name

SELECT * FROM Production.Product WHERE Name LIKE 'SPO[^K]%' ORDER BY Name

SELECT Distinct Color FROM Production.Product ORDER BY Color DESC