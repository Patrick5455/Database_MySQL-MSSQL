USE cape_codd;

SELECT SUM(ExtendedPrice) AS Total
FROM ORDER_ITEM
WHERE SKU IN (
					SELECT SKU
                    FROM SKU_DATA
                    WHERE Department = "Camping");