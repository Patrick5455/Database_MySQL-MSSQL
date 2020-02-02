use cape_codd;

-- SELECT SKU_Description, Department, CatalogPage
-- FROM CATALOG_SKU_2018
-- WHERE CatalogPage > 23 and CatalogPage < 76 ;

-- SELECT SKU, SKU_Description, Department, CatalogPage, DateOnWebsite
-- FROM CATALOG_SKU_2018
-- WHERE CatalogPage > 23 and DateOnWebsite = '2018-01-01'
-- GROUP BY Department, SKU, SKU_Description, CatalogPage, DateOnWebsite
-- ORDER BY CatalogPage DESC;

-- Combining two queries
-- 1
-- SELECT SUM(ExtendedPrice) AS WaterSportsRevenue
-- FROM ORDER_ITEM
-- WHERE SKU  IN (100100,100200,100300,100400,100500,10000,101100,101200);
-- -- 2
-- SELECT sku
-- FROM sku_data
-- WHERE Department = 'Water Sports'

-- join
SELECT SUM(ExtendedPrice) AS WaterSportsRevenue
FROM ORDER_ITEM
WHERE SKU  IN 
	(SELECT SKU
	 FROM SKU_DATA
		WHERE Department = 'Water Sports');


