create database sql_batch
use sql_batch
go

create table customers (
	customer_id int,
	cust_name varchar(50),
	city varchar(50),
	grade int NULL,
	salesman_id int
	)

insert into customers 
(customer_id, cust_name, city, grade, salesman_id)
values
