21. Find all customers whose CNUM is 1000 above the SNUM of Serres.
 
select *
from customers
where CNUM = (
    select snum + 1000
    from salespeople
    where sname = 'Serres'
);

22. Give the salespeople’s commissions as percentages instead of decimal numbers. 

select sname,
       COMM * 100 as Commission_Percentage
from salespeople;

23. Find the largest order taken by each salesperson on each date, eliminating those MAX orders which are less than $3000.00 in value.

select s.snum, s.sname, o.odate,
       max(o.amt) as largest_order
from Salespeople S
inner join orders O
on s.snum = o.snum
group by s.snum, s.sname, o.odate
having max(o.amt) >= 3000.00;

 
24. List the largest orders for October 3, for each salesperson. 

select s.snum, s.sname,
       max(o.amt) as largest_Order
from salespeople s
inner join Orders O
on s.snum = s.snum
where o.odate = '1996-10-03'
group by s.snum, s.sname;

25. Find all customers located in cities where Serress (snum 1002) has customers.

select *
from customers
where city in (
    select city
    from customers
    where snum = 1002
);

