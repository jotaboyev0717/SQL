use sql_batch
go


create  table customer2 (
	customer_id INT,
	cust_name varchar(30),
	city varchar(30),
	grade INT NULL, 
	salesman_id INT
	)

INSERT INTO customer2 (customer_id, cust_name, city, grade, salesman_id)
VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

select * from customer2

--1
select * from customer2 WHERE grade > 100

--2
select * from customer2 WHERE city = 'New York' and grade > 100

--3
select * from customer2 WHERE city = 'New York' or grade > 100

--4
select * from customer2 WHERE city = 'New York' or grade <= 100

--5
select * from customer2 WHERE NOT city = 'New York' or NOT grade > 100

--6
select * from orders WHERE NOT ((ord_date = '2012-09-10'  and salesman_id > 5005) OR purch_amt > 1000)

--7
select * from salesman WHERE commission BETWEEN 0.10 AND 0.12 

--8
select * from orders WHERE (purch_amt < 200 or not (ord_date >= '2012-02-10' AND customer_id < 3009))

--9
select * from orders WHERE NOT (ord_date =  '2012-08-17' or customer_id > 3005 and purch_amt < 1000)
select * from orders WHERE NOT ((ord_date =  '2012-08-17' or customer_id > 3005) and purch_amt < 1000)

--10
select ord_no, purch_amt, 
(purch_amt/6000) * 100 as archived,
100 - (purch_amt/6000) * 100 as unarchived
from orders WHERE purch_amt > 3000

--11
select * from emp_details WHERE EMP_LNAME in ('Dosni', 'Mardy')

--12
select * from emp_details WHERE EMP_DEPT in (47, 63)


