show databases;
use sql_intro;
show tables;
select * from customer;
/* VIEW IN SQL */
CREATE VIEW Customer_details
as
select Customer_Name,Item,Sell_Price from Customer;
select * from Customer_details;

use sql_joins;
select * from Cricket;
select * from Football;
CREATE VIEW Player_Description
as
select * from Cricket inner join Football using(Name);
select * from Player_Description;
/* RENAME DESCRIPTION */
rename table Cricket to Cricketer_Details;
rename table Football to Footballer_Details;
/* DISPLAY VIEWS */
show full tables
where table_type = "VIEW";
/* DELETE VIEW */
drop view Customer_details;

/* WINDOWS FUNCTION IN SQL */
use sql_intro;
show tables;
select * from employee_details;
select Name,Age,City,sum(Salary) over (partition by City) as Total_Salary from employee_details;
/* Row Number */
select row_number() over (order by Salary) as RowNumber,Name,Salary from employee_details order by Salary;
create table demo (Student_ID int,Student_Name varchar(20));
insert into demo 
values (101,"Shane"),
(102,"Bradley"),
(103,"Herath"),
(103,"Herath"),
(104,"Nathan"),
(105,"Kevin"),
(105,"Kevin");
select * from demo;
select Student_ID,Student_Name,row_number() over (partition by Student_ID,Student_Name) as RowNumber from demo;
/* RANK FUNCTION */
create table demo1 (Variable_a int);
insert into demo1 values (101),(102),(103),(103),(104),(105),(106),(106),(106),(107);
select Variable_a,rank() over (order by Variable_a) as Test_Rank from demo1;
/* FIRST VALUE() */
select Name, Age,Salary,first_value(Name) over (order by Salary desc) as Highest_Salary from employee_details;
select Name, Age,City,Salary,first_value(Name) over (partition by City order by Salary desc) as Highest_Salary from employee_details;




