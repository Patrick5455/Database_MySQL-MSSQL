use cape_codd;
-- In an SQL join operation, the SQL JOIN operator is used to combine parts or all of two or more tables
-- 1. Explicit join : 
-- The SQL join operator is used as part of the SQL statement
-- 2. Implicit Join
-- The SQL JOIN is not used as part of the SQL statement

-- Example
-- An SQL CROSS JOIN comnines each row in one table with every row in another table

-- select *
-- from retail_order, 	order_item;

-- By selecting rows by matching the primary key values  of 
-- one table with the foreign key values of a second table, we produce an SQL INNER JOIN
-- NB: The table with the primary key should come first

-- select *
-- from RETAIL_ORDER , ORDER_ITEM
-- where RETAIL_ORDER.OrderNumber = ORDER_ITEM.OrderNumber;

-- select *
-- from RETAIL_ORDER , ORDER_ITEM
-- where RETAIL_ORDER.OrderNumber = ORDER_ITEM.OrderNumber
-- order by RETAIL_ORDER.OrderNumber, ORDER_ITEM.SKU;

select *
from retail_order, order_item
where retail_order.OrderNumber = order_item.OrderNumber
order by order_item.SKU, retail_order.OrderNumber;

-- 99.9% a join operations means an input join
-- an inout join is done with "="