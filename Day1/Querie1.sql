--1. List all the columns of the Salespeople Table
select * from Salespeople;


--2. List all the customers with a rating of 100
select * from Customers where rating = 100;


--3. Find all records in Customers table with NULL values in the city column
select * from Customers where city is NULL;


--4. Find the largest order taken by each salesperson on each date.
select o.snum, s.sname, o.odate, max(o.amt) as max_order 
from orders o 
join salespeople s 
on o.snum = s.snum 
group by o.snum, o.odate;


--5. Arrange the Orders table by descending customer number.
select * from orders order by cnum desc;