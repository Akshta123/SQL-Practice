6. Find which salespeople currently have orders in the Orders table. 

select distinct s.snum, s.sname
from Salespeople S
inner join Orders O
on S.SNUM = O.SNUM;


7. List names of all customers matched with the salespeople serving them. 

select c.cname, s.sname
from customers c
inner join Salespeople S
on c.snum = s.snum;


8. Find the names and numbers of all salespeople who had more than one customer. 

select s.snum, s.sname
from salespeople S
inner join customers C
on S.SNUM = C.SNUM
group by S.SNUM, S.SNAME
having COUNT(C.CNUM) > 1;

9. Count the orders of each of the salespeople and output the results in descending order. 

SELECT S.SNUM, S.SNAME, COUNT(O.ONUM) AS Total_Orders
FROM Salespeople S
LEFT JOIN Orders O
ON S.SNUM = O.SNUM
GROUP BY S.SNUM, S.SNAME
ORDER BY Total_Orders DESC;

10. List the Customer table if and only if one or more of the customers in the Customer table are 
located in San Jose.  

SELECT *
FROM Customers
WHERE EXISTS (
    SELECT 1
    FROM Customers
    WHERE CITY = 'San Jose'
);

