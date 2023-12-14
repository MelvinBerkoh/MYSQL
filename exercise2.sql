/* EXERCISE 2 Get the orders placed this year*/
/* this returns null because there isnt any data that matches*/
SELECT order_id
FROM orders O
WHERE shipped_date = '2023-12-14';
/* This returns zero using the count function to avoid having a null there*/
SELECT COUNT(order_id) As 'Number of orders this year'
FROM orders O
WHERE shipped_date = '2023-12-14';