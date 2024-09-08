/* INNER JOIN */
show databases;
create database sql_joins;
show databases;
use sql_joins;
create table Cricket(Cricket_ID int auto_increment,Name varchar(20),primary key(Cricket_ID));
create table Football(Football_ID int auto_increment,Name varchar(20),primary key(Football_ID));
insert into Cricket(Name) values ("Sachin"),("Saurav"),("Ms Dhoni"),("Yuvraj"),("Stuart"),("Johnson"),("Hayden");
select * from Cricket;
insert into Football(Name) values ("Saurav"),("Langer"),("Astle"),("Ms Dhoni"),("Stuart"),("Johnson"),("Hayden");
select * from Football;
/* Now we want to find the players that are both the part of football and cricket */
select * from Cricket as c inner join Football as f on c.Name=f.Name;
select c.Cricket_ID,c.Name,f.Football_Id,f.Name from Cricket as c inner join Football as f on c.Name=f.Name;
select * from Cricket inner join Football using(Name);
/* LEFT JOIN */
show databases;
use sql_intro;
show tables;
create table Customer (Customer_ID int auto_increment primary key,Customer_Name varchar(20),Item varchar(20),Sell_Price float);
insert into Customer (Customer_Name,Item,Sell_Price) values ("Sourav","Cricket-Bat",25500),
("Ronaldo","Football",26000),
("Dhoni","Bike",55000),
("Gayle","Watch",30000),
("Sachin","Car",55500);
select * from Customer;
drop table Order_details;
create table Order_details(Order_ID int,Product_Sold varchar(20),Status char(4));
insert into Order_details values (1,"Cricket-Bat","Sold"),
(5,"Car","Sold");
select * from Order_details;
select c.Customer_Name,c.Sell_Price,o.Product_Sold,o.Status from Customer as c left join Order_details as o on c.Customer_ID=o.Order_ID where Status is null;
select c.Customer_Name,c.Sell_Price,o.Product_Sold,o.Status from Customer as c left join Order_details as o on c.Customer_ID=o.Order_ID ;
/* Right Join */
insert into Order_details values (6,"T-Shirt","Sold"),(7,"Book","Sold"),(8,"Wallet","Sold");
select * from Order_details;
select c.Customer_Name,c.Sell_Price,o.Product_Sold,o.Status from Customer as c Right join Order_details as o on c.Customer_ID=o.Order_ID;
/* Full Join */
select c.Customer_Name,c.Sell_Price,o.Product_Sold,o.Status from Customer as c left join Order_details as o on c.Customer_ID=o.Order_ID union select c.Customer_Name,c.Sell_Price,o.Product_Sold,o.Status from Customer as c Right join Order_details as o on c.Customer_ID=o.Order_ID;
show databases;
use sql_intro;
show tables;
create table OrderDetails (OrderID int,CustomerID int,EmployeeID int primary key,OrderDate date,ShipperID int);
insert into OrderDetails values (10308,2,7,"1996-09-18",3),
(10309,37,3,"1996-09-19",1),
(10310,77,8,"1996-09-20",2);
select * from OrderDetails;
select * from customers;
select c.CustomerName,o.OrderID from customers as c left join OrderDetails as o on c.CustomerID=o.CustomerID order by CustomerName;
select c.CustomerName,o.OrderID from customers as c right join OrderDetails as o on c.CustomerID=o.CustomerID order by CustomerName;
select c.CustomerName,o.OrderID from customers as c left join OrderDetails as o on c.CustomerID=o.CustomerID union select c.CustomerName,o.OrderID from customers as c right join OrderDetails as o on c.CustomerID=o.CustomerID order by CustomerName;
select * from customers as c left join OrderDetails as o on c.CustomerID=o.CustomerID;
select * from customers as c right join OrderDetails as o on c.CustomerID=o.CustomerID;
select * from customers as c left join OrderDetails as o on c.CustomerID=o.CustomerID union select * from customers as c right join OrderDetails as o on c.CustomerID=o.CustomerID;
select * from customers as c left join OrderDetails as o on c.CustomerID=o.CustomerID where OrderID is null;
