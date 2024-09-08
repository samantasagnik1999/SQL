Show databases;
use sql_intro;
show tables;
describe employee_details;
select * from employee_details;
select round(avg(Salary),1) as Average_Salary from employee_details;
select Name,Age,Sex,Salary from employee_details where Salary < (select avg(Salary) from employee_details);
select Name,Age,Sex,Salary from employee_details where Salary > (select Salary from employee_details where Name="Anurag");
