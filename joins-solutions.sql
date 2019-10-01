--1. Get all customers and their addresses
SELECT * 
FROM "customers"
JOIN "addresses" 
	ON "customers".id = "addresses".customer_id;

-- 2. Get all orders and their line items (orders, quantity and product)