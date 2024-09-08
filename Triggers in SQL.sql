CREATE DATABASE triggers;
use triggers;
show tables;
/* Before Insert Trigger */
CREATE table Customers (Customer_ID int,Age int,Name varchar(30));
delimiter //
CREATE trigger Age_verify
before insert on Customers
for each row
if new.Age < 0 then set new.Age = 0;
end if ; //
INSERT INTO Customers values (101,27,"James"),
(102,-40,"Ammy"),
(103,32,"Ben"),
(104,-39,"Angela");
select * from Customers;
