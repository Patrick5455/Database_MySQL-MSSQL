use cape_codd;

--Concatenate
SELECT CONCAT(SKU,'at',SKU_Description) AS SKUCONCAT
FROM SKU_DATA
ORDER BY SKU;

SELECT Department, COUNT(SKU) AS NumberOfCatalogItems
FROM CATALOG_SKU_2017
WHERE CatalogPage IS NOT NULL
GROUP BY Department;
--HAVING COUNT(SKU)>2