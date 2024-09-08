show databases;
use sql_intro;
show tables;
/* STORED PROCEDURE */
select * from employee_details;
Delimiter //
create procedure top_employee()
Begin
select Name,Age,City,Salary from employee_details
where Salary > 80000;
End //
delimiter ;
/* THE WAY TO RUN A SRORED PROCEDURE */
call top_employee();

select * from customer;
Delimiter $$
create procedure top_customer()
Begin
select * from customer where Sell_Price > 30000;
End $$
delimiter ;
call top_customer();

select * from Cricketer;
Delimiter $$
create procedure Selected_Player()
Begin
select * from Cricketer where Result="Passed";
End $$
delimiter ;
call Selected_Player();
Delimiter $$
create procedure Not_Selected_Players()
Begin
select * from Cricketer where Result="Failed";
End $$
delimiter ;
call Not_Selected_Players();

use mysql;
show tables;
select * from server_cost;
Delimiter //
create procedure server_cost()
Begin
select cost_name,last_update,default_value from server_cost 
where default_value < 1;
End //
delimiter ;
call server_cost();

/* STORED PROCEDURE USIND IN PARAMETER */
use sql_intro;
select * from employee_details;
Delimiter //
create procedure sp_sortBySalary(IN var int)
Begin
select * from employee_details order by Salary desc limit var;
End //
delimiter ;
call sp_sortBySalary(3);
call sp_sortBySalary(5);
