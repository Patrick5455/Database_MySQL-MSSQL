select Buyer, sku_data.sku, sku_description, sum(ExtendedPrice) as BuyerSKURevenue
from sku_data, order_item
where sku_data.sku = order_item.sku
group by Buyer, sku_data.SKU, sku_description
order by BuyerSKURevenue DESC;