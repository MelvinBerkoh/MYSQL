/* EXERCISE 1 Return all the products 
 name, unit price, new price (unit price *1.1)*/
USE sql_store;
SELECT name AS 'Product Name',
  unit_price AS 'Original Price',
  (unit_price * 1.1) AS 'New Price'
FROM products;