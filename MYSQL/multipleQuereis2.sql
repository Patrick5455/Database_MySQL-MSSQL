-- An SQL Subquqery is also called
-- nested query
-- query within  a query

-- A query is nested from the WHERE (CONDITION) line

-- SELECT *
-- FROM SKU_DATA;


-- SELECT *
-- FROM ORDER_ITEM
-- WHERE SKU IN(
-- 			SELECT SKU 
--             FROM SKU_DATA
--             WHERE Department = "Climbing");

SELECT DISTINCT Buyer, Department
FROM sku_data
WHERE SKU IN (
			select sku
            from order_item
            where OrderNumber in (
            select orderNumber
            from retail_order
            where OrderMonth = 'January'
            and OrderYear = '2018')
            );