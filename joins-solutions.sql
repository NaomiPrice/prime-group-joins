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
SELECT "warehouse".id, "warehouse".warehouse, "products".description
FROM "warehouse"
JOIN "warehouse_product"
	ON "warehouse_product".warehouse_id = "warehouse".id
JOIN "products"
	ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers".id, "customers".first_name, "customers".last_name, count(*)
FROM "orders"
JOIN "addresses"
	ON "addresses".id = "orders".address_id
JOIN "customers"
	ON "customers".id = "addresses".customer_id
GROUP BY "customers".id

-- 6. How many customers do we have?
SELECT * 
FROM "customers";