-- REGEXP operator used to compare compex patterns
-- SYTANX is WHERE blah REGEXP 'somepattern'
-- ^ used to dictate the begining of a string 
-- $ used to dictatet the end of a string 
-- | means logical or 
-- [] characters that come before the pattern 
-- [a-z] character a - z
-- Exercise 7
/* get the customers whose first names are ELKA or AMBUR 
 get last names end with EY or ON 
 get last names start with MY or contains SE
 get last names contain B followed by R or U */
SELECT first_name,
  last_name
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';
SELECT first_name,
  last_name
FROM customers
WHERE last_name REGEXP 'EY$|ON$';
SELECT first_name,
  last_name
FROM customers
WHERE last_name REGEXP '^MY|SE';
SELECT first_name,
  last_name
FROM customers
WHERE last_name REGEXP 'B[R|U]';