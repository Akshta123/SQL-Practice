16. Find all customers with orders on October 3. 

SELECT DISTINCT C.*
FROM Customers C
INNER JOIN Orders O
ON C.CNUM = O.CNUM
WHERE O.ODATE = '1996-10-03';

17. Give the sums of the amounts from the Orders table, grouped by date, eliminating all those 
dates where the SUM was not at least 2000.00 above the MAX amount. 

SELECT ODATE, SUM(AMT) AS Total_Amount,
       MAX(AMT) AS Maximum_Amount
FROM Orders
GROUP BY ODATE
HAVING SUM(AMT) >= MAX(AMT) + 2000.00;



18. Select all orders that had amounts that were greater than at least one of the orders from 
October 6. 

SELECT *
FROM Orders
WHERE AMT > ANY (
    SELECT AMT
    FROM Orders
    WHERE ODATE = '1996-10-06'
);


19. Write a query that uses the EXISTS operator to extract all salespeople who have customers 
with a rating of 300. 

SELECT S.SNUM, S.SNAME
FROM Salespeople S
WHERE EXISTS (
    SELECT 1
    FROM Customers C
    WHERE C.SNUM = S.SNUM
      AND C.RATING = 300
);


20. Find all pairs of customers having the same rating.

SELECT C1.CNAME AS Customer1,
       C2.CNAME AS Customer2,
       C1.RATING
FROM Customers C1
INNER JOIN Customers C2
ON C1.RATING = C2.RATING
AND C1.CNUM < C2.CNUM;
