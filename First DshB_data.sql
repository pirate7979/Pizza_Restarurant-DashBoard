SELECT
	o.order_id, #total orders
	i.item_price, #total sales 
	o.quantity, #total items
	i.item_cat, #sales by category
	i.item_name, #top selling items
	o.created_at, #orders by hours, sales by hours
	a.delivery_address1,
	a.delivery_city,
	a.delivery_zipcode, #orders by address
	o.delivery #orders by delivery/pickup

FROM 
	orders o
	LEFT JOIN item i ON o.item_id=i.item_id
	LEFT JOIN address a ON o.add_id=a.add_id
#(requried data to the first dashboard)    
    