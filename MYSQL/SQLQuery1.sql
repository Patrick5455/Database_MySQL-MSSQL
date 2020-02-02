

/*USE cape_codd
select *
from BUYER
Where Department = 'Pete Hansen';

SELECT DISTINCT department,catalogpage
FROM CATALOG_SKU_2017
WHERE  catalogpage>23;

SELECT *
FROM ORDER_ITEM
ORDER BY PRICE DESC, OrderNumber ASC;

select *
from SKU_DATA
where Department = 'Water Sports' 
	AND Buyer = 'Nancy Meyers';

select *
from SKU_DATA
where Department = 'Camping' AND Buyer = 'Cindy Lo';

select *
from SKU_DATA
where Department = 'Water Sports' and not Buyer = 'Nancy Meyers';

select *
from SKU_DATA
where buyer in ('Nancy Meyers', 'Cindy Lo', 'Jerry Martin');

select * 
from ORDER_ITEM
where ExtendedPrice >= 100
and ExtendedPrice <=130
order by ExtendedPrice ;

select * 
from ORDER_ITEM
where ExtendedPrice NOT BETWEEN 100 AND 200
order by ExtendedPrice;*/

--Wild Cards
--%: Before or after a word

/*select *
from sku_data
where SKU_Description LIKE '%Tent%'*/
--%2__ : all numbers after this particular number. The '_' is used to determine the number of figures to bring after the specified digit

/*select*
from SKU_DATA
where SKU like '%2_____'*/

--NULL VALUES IN SQL
/*select *
from CATALOG_SKU_2017
where CatalogPage IS NULL;

select *
from CATALOG_SKU_2017
where CatalogPage IS NOT NULL;*/

			--fUNTIONS IN SQL
--Count(*) - Count the number of rows in a table
--COUNT{Name} - Count the number of rows in the table where column {Name} IS NOT NULL
--etc

/*select SUM(OrderTotal) AS OrderSum
FROM RETAIL_ORDER;

select OrderTotal
from RETAIL_ORDER;*/

/*select SUM(ExtendedPrice) as OrderItemSum, AVG(ExtendedPrice) as OrderItemAvg, 
	   MIN(ExtendedPrice) as orderItemMin, MAX(ExtendedPrice) as OrderItemMax
from ORDER_ITEM;

select count(*) as NumberofRows
from ORDER_ITEM;*/

/*Select count (DISTINCT Department)  as DeptCount
from SKU_DATA;*/

--2 Limitations to SQL built-in functions
--1. You cannot combine table column names with COUNT(*) SQL built-in function.. 
--conventionally this is wrong even though it works in workbench(MySql)
/*select Department, count(*)
from SKU_DATA;*/
--2. You cannot use them (table names) in an SQL WHERE clause becuase the SQL WHERE clause operates
-- on rows (choosing which rows will be displayed), whereas the aggregate functions operate on columns.

/*Select *
from RETAIL_ORDER
where OrderTotal > AVG(OrderTotal);*/
-- the code above is wrong becuase the where function focus on rows whereas aggregate functions 
-- focus on column name hence aggregate function AVG cannot stand in WHERE


---						PERFORMING CALCULATIONS IN SQL QUERIES

/*SELECT OrderNumber, SKU, (QUANTITY * PRICE) AS EP --Alwaya put mathematical function in brackets
FROM ORDER_ITEM
ORDER BY OrderNumber, SKU;

SELECT OrderNUmber, SKU
FROM ORDER_ITEM
WHERE (Quantity*Price) <> ExtendedPrice
ORDER BY OrderNumber, SKU;*/

-- Concatenation
--Microsoft SQL Syntax
/*SELECT SKU, SKU_Description, (Buyer+' in '+Department) as Sponsor
FROM SKU_DATA
ORDER BY SKU;*/

-- This is the MYSQL Syntax
/*SELECT SKU, SKU_Description, CONCAT(Buyer, ' in ', Department) as Sponsor
FROM SKU_DATA
ORDER BY SKU;*/

--Oracle Database Syntax
/*SELECT SKU, SKU_Description, (Buyer|| ' in ' ||Department) as Sponsor
FROM SKU_DATA
ORDER BY SKU;*/

--MySQL Workbench CONCAT Aggregate function also works with Microsoft
-- This can be used when we want to concat 'int' and 'char' columns which Microsift does not allow
/*SELECT concat(SKU,' at ',SKU_Description) AS SKUCONCAT
FROM SKU_DATA
ORDER BY SKU;*/

--			TRIM IN SQL
--Trim is used to remove whitespaces in an input
--RTRIM i used to remove whitespaces from the right side
--LTRIM is used to remove whitespaces from the left side 

/*SELECT SKU, SKU_Description, RTRIM(Buyer) +' in ' +RTRIM(Department) AS Sponsor
FROM SKU_DATA
ORDER BY SKU;*/

/*--Grouping Rows in SQL Queries - The SQL GROUP BY Clause
SELECT Department, COUNT(SKU) AS NumberOfCatalogItems
FROM CATALOG_SKU_2017
WHERE CatalogPage IS NOT NULL
GROUP BY Department;*/

--THE SQL HAVING CLAUSE
SELECT Department, COUNT(SKU) AS NumberOfCatalogItems
FROM CATALOG_SKU_2017
WHERE CatalogPage IS NOT NULL
GROUP BY Department
--HAVING COUNT(SKU)>2;

-- THE DIFFERENCE BETWEEN HAVING AND WHERE CONDITION CLAUSE IS THAT HAVING ACCEPTS AGGREGATE FUNCTION 
--UNLIKE WHERE WHICH DOES NOT ACCEPT AGGREGATE FUNCTION

--Grouping By More Than One Column
SELECT Department, Buyer, COUNT(SKU) AS Dept_Buyer_SKU_Count
FROM SKU_DATA
GROUP BY Department, Buyer;






