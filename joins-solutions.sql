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
SELECT *
FROM "warehouse"
JOIN "warehouse_product"
	ON "warehouse_product".warehouse_id = "warehouse".id
JOIN "products"
	ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'cheetos';
--OR
SELECT "warehouse".id, "warehouse".warehouse, "products".description
FROM "warehouse"
JOIN "warehouse_product"
	ON "warehouse_product".warehouse_id = "warehouse".id
JOIN "products"
	ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'cheetos';

-- 4. Which warehouses have diet pepsi?