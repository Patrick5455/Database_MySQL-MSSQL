--Querying two or more tables in SQL
USE cape_codd;

SELECT SUM(ExtendedPrice) AS Total
FROM ORDER_ITEM
WHERE SKU IN (
					SELECT SKU
                    FROM SKU_DATA
                    WHERE Department = 'Camping');


SELECT Department
FROM SKU_DATA;