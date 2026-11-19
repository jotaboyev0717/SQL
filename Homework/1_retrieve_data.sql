use sql_batch
go

--Tables salesman
create table salesman (
	salesman_id int,
	name varchar(50),
	city varchar(50),
	commission decimal(2, 2)
	)


create table orders (
	ord_no int,
	purch_amt decimal(6, 2),
	ord_date date,
	customer_id int,
	salesman_id int
	)

create table customer (
	customer_id int,
	cust_name varchar(50),
	city varchar(50),
	grade int NULL,
	salesman_id int
	)

create table nobel_win (
	year int,
	subject varchar(20),
	winner varchar(25),
	country varchar(20),
	category varchar(30)
	)

create table item_mast (
	pro_id int,
	pro_name varchar(30),
	pro_price decimal(10,2),
	pro_com int
	)

create table emp_details (
	EMP_IDNO int,
	EMP_FNAME varchar(30),
	EMP_LNAME varchar(30),
	EMP_DEPT int
	)


--Insert

--salesman
insert into salesman
(salesman_id, name, city, commission)
values
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

--Orders
insert into orders 
(ord_no, purch_amt, ord_date, customer_id, salesman_id)
values
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

--Customer
insert into customer (customer_id, cust_name, city, grade, salesman_id)
values
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

--NOBEL WIN
insert into nobel_win (year, subject, winner, country,category)
values
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

--ITEM_MAST
insert into item_mast (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM)
VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

--emp_details
INSERT INTO emp_details (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT)
VALUES
(127323, 'Michale', 'Robbin', 57),
(526689, 'Carlos', 'Snares', 63),
(843795, 'Enric', 'Dosio', 57),
(328717, 'Jhon', 'Snares', 63),
(444527, 'Joseph', 'Dosni', 47),
(659831, 'Zanifer', 'Emily', 47),
(847674, 'Kuleswar', 'Sitaraman', 57),
(748681, 'Henrey', 'Gabriel', 47),
(555935, 'Alex', 'Manuel', 57),
(539569, 'George', 'Mardy', 27),
(733843, 'Mario', 'Saule', 63),
(631548, 'Alan', 'Snappy', 27),
(839139, 'Maria', 'Foster', 57);

-- 1
select * from salesman

--2
select 'This is SQL Exercise, Practice and Solution'

--3
select 5, 6, 7

--4
select 4 + 5

--5
select 15/5 + 3/2

--6
select name, commission from salesman

select * from orders

--7
select ord_date, salesman_id, ord_no, purch_amt from orders

--8 DISTINCT
select DISTINCT salesman_id from orders

--9
select name, city from salesman WHERE city = 'Paris'

--10
select * from customer

select * from customer WHERE grade = 200

--11
select ord_no, ord_date, purch_amt from orders WHERE salesman_id = 5001

--12
select year, subject, winner from nobel_win WHERE year = 1970

--13
select winner from nobel_win WHERE year = 1971 and subject = 'Literature'

--14
select year, subject from nobel_win WHERE winner = 'Dennis Gabor'

--15
select winner from nobel_win WHERE subject = 'Physics' AND year >= 1950;

--16
select year, subject, winner, country from nobel_win WHERE year >= 1965 and year <= 1975 and subject = 'Chemistry'

--17 IN use
select * from nobel_win WHERE year > 1972 and winner in ('Menachem Begin', 'Yitzhak Rabin')

--18 LIKE use
select * from nobel_win WHERE winner LIKE 'Louis %'

--19 UNION use
select * from nobel_win WHERE year = 1970 and subject = 'Physics' 
union select * from nobel_win WHERE year = 1971 and subject = 'Economics'

--20 NOT IN use
select * from nobel_win WHERE year = 1970 and subject not in ('Physiology', 'Economics')

--21 UNION used
select * from nobel_win WHERE (year < 1971 and subject = 'Physiology')
UNION
(select * from nobel_win WHERE (year >= 1974 and subject = 'Peace'))

--22
select * from nobel_win WHERE winner = 'Johannes Georg Bednorz'

--23 order by DESC
--desc largest to lowest
--asc lowest to highest
select * from nobel_win WHERE subject NOT LIKE 'P%'
order by year desc, winner

--24 not fully solved
select * from nobel_win WHERE subject not in ('Chemistry')
order by subject asc

--25 BETWEEN use
select * from item_mast
--1st way
select * from item_mast WHERE pro_price >= 200 and pro_price <= 600
--2nd way
select * from item_mast WHERE pro_price BETWEEN 200 and 600

--26 AVG-AVERGE
select avg(pro_price) from item_mast WHERE pro_com = 16

--27
select 
	pro_name as "Item Name",
	pro_price as "Price in Rs."
from item_mast

--28
select pro_name, pro_price from item_mast WHERE pro_price >= 250
order by pro_price desc, pro_name asc

--29
select avg(pro_price), pro_com from item_mast 
group by pro_com

--30
select pro_name, pro_price from item_mast WHERE pro_price = (select min(pro_price) from item_mast)

--31
select distinct EMP_LNAME from emp_details

--32
select * from emp_details WHERE EMP_LNAME = 'Snares'

--33
select * from emp_details WHERE EMP_DEPT = 57