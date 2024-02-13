select
o.order_id,
i.item_price,
i.item_cat,
o.quantity,
i.item_name,
o.created_at,
a.delivery_address1,
a.delivery_address2,
a.delivery_city,
a.delivery_postcode,
o.delivery
from
orders_data o
left join item_data i on o.item_id = i.item_id
left join address_data a on o.add_id = a.add_id