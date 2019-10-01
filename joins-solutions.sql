--1. Get all customers and their addresses
SELECT * 
FROM "customers"
JOIN "addresses" 
	ON "customers".id = "addresses".customer_id;

-- 2. Get all orders and their line items (orders, quantity and product)
SELECT *
FROM "orders"
JOIN "line_items"
	ON "orders".id = "line_items".order_id
JOIN "products" 
	ON "products".id = "line_items".product_id;
--OR
SELECT "orders".id, "orders".order_date, "line_items".quantity, "products".description, "products".unit_price
FROM "orders"
JOIN "line_items"
	ON "orders".id = "line_items".order_id
JOIN "products" 
	ON "products".id = "line_items".product_id;

-- 3. Which warehouses have cheetos?