26. Select all customers with a rating above 200.00. 

select *
from customers
where RATING > 200.00;

27. Count the number of salespeople currently listing orders in the Orders table. 

select count(distinct snum) as Total_Salespeople
from orders;

28. Write a query that produces all customers serviced by salespeople with a commission above 
12%. Output the customer’s name and the salesperson’s rate of commission. 

select c.cname,
       s.comm * 100 as Commission_Percentage
from Customers C
inner join salespeople s
ON c.snum = s.snum
WHERE s.comm > 0.12;

29. Find salespeople who have multiple customers. 

select s.snum, s.sname,
       count(c.cnum) as Total_Customers
from salespeople s
inner join customers c
on s.snum = c.snum
group by s.snum, s.sname
having count(c.snum) > 1;

30. Find salespeople with customers located in their city.
select distinct s.snum, s.sname, s.city
from salespeople s
inner join customers c
ON s.city = c.city;
