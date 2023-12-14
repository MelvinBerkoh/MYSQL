/*Exercise 3
 From the order_items table, get the items from order #6 where the total price is greater than 30*/
SELECT *
FROM order_items O
WHERE ((O.quantity * O.unit_price) > 30)
  AND O.order_id = 6;