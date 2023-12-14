/* Exercise 6 
 get the customers whose addresses contain TRAIL or Avenue 
 Then get ones whose phone numbers end with 9*/
-- Like operator to compare to a certain pattern 
-- % any number of character
-- _ single character or a specified number of characters
SELECT first_name,
  last_name,
  address
FROM customers
WHERE address LIKE '%TRAIL%'
  OR '%AVENUE%';
SELECT first_name,
  last_name,
  phone
FROM customers
WHERE phone LIKE '%9';