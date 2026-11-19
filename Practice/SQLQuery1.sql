use Practice;
go

select * from customers

update customers
set grade = 150
Where customer_id = 3002

alter table customers
add location varchar(10)