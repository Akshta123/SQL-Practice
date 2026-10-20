11. Match salespeople to customers according to what city they lived in.  

SELECT S.SNAME, S.CITY, C.CNAME
FROM Salespeople S
INNER JOIN Customers C
ON S.CITY = C.CITY;


12. Find the largest order taken by each salesperson. 

SELECT S.SNUM, S.SNAME, MAX(O.AMT) AS Largest_Order
FROM Salespeople S
INNER JOIN Orders O
ON S.SNUM = O.SNUM
GROUP BY S.SNUM, S.SNAME;


13. Find customers in San Jose who have a rating above 200. 

SELECT *
FROM Customers
WHERE CITY = 'San Jose'
AND RATING > 200;


14. List the names and commissions of all salespeople in London.

SELECT SNAME, COMM
FROM Salespeople
WHERE CITY = 'London';


15. List all the orders of salesperson Motika from the Orders table.

SELECT O.*
FROM Orders O
INNER JOIN Salespeople S
ON O.SNUM = S.SNUM
WHERE S.SNAME = 'Motika';
