--SELECT COUNT(1) FROM Production.Product
--SELECT Name FROM Production.Product
--PRINT @@RowCount

SELECT COUNT(Name) as ProductsCount FROM Production.Product

SELECT COUNT(Name) as ProductCount FROM Production.Product
WHERE ProductSubcategoryID IN (
    SELECT ProductSubcategoryID FROM Production.Product
    WHERE ProductSubcategoryID IS NOT NULL
)

SELECT COUNT(ProductSubcategoryID) CountedProducts FROM Production.Product
