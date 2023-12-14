/* Exercise 4
return products with quantity in stock equal to 49, 38, 72*/

SELECT name AS 'Product'
FROM products
WHERE quantity_in_stock IN (49,38,72);