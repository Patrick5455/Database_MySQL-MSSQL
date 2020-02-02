use cape_codd;

--select SKU_Description, Department, CatalogPage
--from CATALOG_SKU_2018
--where CatalogPage > 23 and CatalogPage < 76 ;

SELECT SKU, SKU_Description, Department, CatalogPage, DateOnWebsite
FROM CATALOG_SKU_2018
WHERE CatalogPage > 23 and DateOnWebsite = '2018-01-01'

ORDER BY CatalogPage DESC;

