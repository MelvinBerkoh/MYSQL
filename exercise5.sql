/* Exercise 5
 return customers born between 1/1/1990 and 1/1/2000 */
SELECT first_name,
  last_name,
  birth_date
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';