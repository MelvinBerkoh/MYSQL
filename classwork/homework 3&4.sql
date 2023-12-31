-- classwork and homework using tables created from table 1 and 2-- 
-- Generate a report that shows the name and total order amount 
-- for each product sold.
SELECT P.ProductName,
  SUM(OD.FinalTotal) As FinalTotal
FROM Products P
  INNER JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.PRODUCTNAME;
-- Product Sales Analysis: We are designing our inventory for the 
-- next season. To make informed decisions, we need to know the 
-- total quantity of each product ordered. 
SELECT P.PRODUCTNAME,
  coalesce(SUM(OD.QUANTITY), 0) AS TotalQuantitySold
FROM Products P
  LEFT JOIN OrderDetails OD ON P.PRODUCTID = OD.PRODUCTID
GROUP BY P.PRODUCTNAME
ORDER BY TotalQuantitySold DESC;
-- City-Wise Customer Analysis: Our business development team is 
-- exploring city-wise expansion strategies. They need data on 
-- customers living in the same cities. 
SELECT C.FirstName,
  B.FirstName,
  C.City
FROM CUSTOMERS C
  JOIN Customers B ON C.FirstName > B.FirstName
  AND C.City = B.City;
-- Customer Analysis: Our sales team is organizing a year-end mega 
-- sale and they want to target customers based on their past orders. 
-- They need a list showing the Customer's name, Order Date, 
-- Product Name, and Final Total amount for all the orders placed.
SELECT C.FIRSTNAME,
  C.LASTNAME,
  P.PRODUCTNAME,
  O.OrderDate,
  OD.FinalTotal
FROM CUSTOMERS C
  INNER JOIN ORDERS O ON C.CUSTOMERID = O.CUSTOMERID
  INNER JOIN ORDERDETAILS OD ON O.ORDERID = OD.ORDERID
  INNER JOIN PRODUCTS P ON OD.PRODUCTID = P.PRODUCTID;
--  For this, they need a report that shows customer names, the products 
-- they've ordered, the suppliers of those products, and the total 
-- amounts for each order. The goal is to understand which suppliers' 
-- products are popular among which customers, aiding in future 
-- procurement and marketing decisions.
SELECT C.FIRSTNAME,
  C.LASTNAME,
  P.PRODUCTNAME,
  S.SupplierName,
  OD.FinalTotal
FROM CUSTOMERS C
  INNER JOIN ORDERS O ON C.CUSTOMERID = O.CUSTOMERID
  INNER JOIN ORDERDETAILS OD ON O.ORDERID = OD.ORDERID
  INNER JOIN PRODUCTS P ON OD.PRODUCTID = P.PRODUCTID
  INNER JOIN SUPPLIERS S ON P.SupplierID = S.SupplierID;