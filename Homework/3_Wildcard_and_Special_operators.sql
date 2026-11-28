use sql_batch
go


--1
select * from salesman
WHERE city = 'Paris' OR city = 'Rome'

--2
select * from salesman 
WHERE city in ('Paris', 'Rome')

--3
select * from salesman 
WHERE city NOT in ('Paris', 'Rome')

--4
select * from customer
WHERE customer_id in (3007, 3008, 3009)

--5
select * from salesman Where commission between 0.12 and 0.14

--6
select * from orders
where (purch_amt between 500 and 5000) and purch_amt not in (948.50, 1983.43)

--7 like use for more letters
select * from salesman
where name like '[B-K]%'

select * from salesman
where name between 'A' and 'L'

--8
select * from salesman where name not between 'A' and 'L'

--9
select * from customer
where cust_name like 'B%'

--10
select * from customer
where cust_name like '%n'