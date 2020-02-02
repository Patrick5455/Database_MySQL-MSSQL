
/*
USE cape_codd
select *
from BUYER
Where Department = 'Pete Hansen';*/

/*SELECT DISTINCT department,catalogpage
FROM CATALOG_SKU_2017
WHERE  catalogpage>23;*/

/*SELECT *
FROM ORDER_ITEM
ORDER BY PRICE DESC, OrderNumber ASC;*/

/*select *
from SKU_DATA
where Department = 'Water Sports' 
	AND Buyer = 'Nancy Meyers';*/

/*select *
from SKU_DATA
where Department = 'Camping' AND Buyer = 'Cindy Lo';

select *
from SKU_DATA
where Department = 'Water Sports' and not Buyer = 'Nancy Meyers';*/

/*select *
from SKU_DATA
where buyer in ('Nancy Meyers', 'Cindy Lo', 'Jerry Martin');*/

/*select * 
from ORDER_ITEM
where ExtendedPrice >= 100
and ExtendedPrice <=130
order by ExtendedPrice ;*/

/*select * 
from ORDER_ITEM
where ExtendedPrice NOT BETWEEN 100 AND 200
order by ExtendedPrice;*/



