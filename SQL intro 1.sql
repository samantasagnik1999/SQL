show databases;
use mysql;
show tables;
select * from engine_cost;
describe engine_cost;
create database sql_intro;
show databases;
create table employee_details(Name varchar(25),Age int,Sex char(1),Date_of_Join date,City varchar(15),Salary float);
describe employee_details;
insert into employee_details values("Anurag",28,"M","1996-02-09","Kolkata",70000),
("Prajesh",38,"M","1986-11-18","Mumnai",125000),
("Anubhab",27,"M","1997-02-05","Kolkata",75000),
("Ruchita",28,"F","1996-05-19","Pune",56000),
("Anlita",30,"F","1994-01-01","Delhi",85000),
("Tarak",35,"M","1989-06-11","Hyderabad",77500),
("Sandeep",30,"M","1994-02-24","Bangalore",62000),
("Smriti",26,"F","1998-08-03","Bangalore",72000),
("Amit",32,"M","1992-09-08","Pune",50000),
("Sayan",29,"M","1995-02-10","Kolkata",54000),
("Sangeeta",28,"F","1996-11-15","Mumbai",82000),
("Raunak",29,"M","1995-11-09","Hyderabad",72000),
("Riyan",27,"M","1997-07-07","Rajasthan",75500),
("Sraboni",30,"F","1994-03-04","Delhi",65000),
("Abir",28,"M","1996-01-04","Delhi",50000),
("Tanya",26,"F","1998-12-12","Kolkata",55000),
("Akash",32,"M","1992-10-16","Rajasthan",75400);
select * from employee_details;
select distinct city from employee_details;
select count(Name) as Count_name from employee_details;
select sum(Salary) as Total_Salary from employee_details;
select avg(Salary) as Average_Salary from employee_details;
select Name,Age,Salary from employee_details;
select * from employee_details where Age> 30;
select * from employee_details where City="Kolkata" or City="Mumbai";
select * from employee_details where City in("Kolkata","Mumbai");
select * from employee_details where Date_of_Join between "1990-01-01" and "1995-01-01";
select * from employee_details where Age < 30 and Sex="M";
select Sex,sum(Salary) as Total_Salary from employee_details group by Sex;
select * from employee_details order by Salary;
select * from employee_details order by Salary desc;
select (10+20) as Addition;
select (10-20) as Subtraction;
select (10*20) as Multiplication;
select (10/20) as Division;
select length("Sagnik") as Total_Length;
select repeat("@",10);
select upper("Sagnik");
select lower("SAGNIK");
select curdate();
select day(curdate());
select now();
## STRING FUNCTION
## Conversion to Uppercase & Lowercase letters
select upper("SAGNIK") as Upper_Case;
select ucase("SAGNIK") as Upper_Case;
select lower("SAGNIK") as Lower_Case;
select lcase("SAGNIK") as Lower_Case;
## Determine the Character Length in a String
select length("India") as Total_Length;
select character_length("India") as Total_Length;
select character_length(Name) as Total_length from employee_details;
select Name,character_length(Name) as Total_length from employee_details;
select Name,char_length(Name) as Total_length,Date_of_Join,Age,Sex,City,Salary from employee_details;
select concat("India ","is ","in Asia") as merged;
select  Name,Age,concat(Name," lives in ",City) as Resident,Sex,Salary from employee_details;
select reverse("India");
select reverse(Name) from employee_details;
select replace("Orange is a Vegetable","Vegetable","Fruit");
select length("     India     ") as Total_Length;
select ltrim("     India     ");
select length(ltrim("     India     "));
select length(rtrim("     India     "));
select length(trim("     India     "));
select position("Fruit"in"Orange is a Fruit") as Location_of_the_String;
## ASCII values
select ascii("a");
select ascii("z");
select ascii("A");
select ascii("Z");
select ascii("0");
select ascii("9");
## Group By in SQL
show databases;
use sql_intro;
show tables;
create table employee(Emp_ID int primary key,Name varchar(25),Age int,Sex char(1),Date_of_Join date,Department varchar(20),City varchar(15),Salary float);
describe employee;
insert into employee values(21,"Anurag",28,"M","1996-02-09","Sales","Mumbai",70000),
(01,"Prajesh",38,"M","1986-11-18","Software","Mumbai",125000),
(02,"Anubhab",27,"M","1997-02-05","Sales","Kolkata",75000),
(03,"Ruchita",28,"F","1996-05-19","Sales","Pune",56000),
(04,"Anlita",30,"F","1994-01-01","Data Analyst","Delhi",85000),
(05,"Tarak",35,"M","1989-06-11","Sales","Hyderabad",77500),
(06,"Sandeep",30,"M","1994-02-24","Accounts","Bangalore",62000),
(07,"Smriti",26,"F","1998-08-03","Accounts","Bangalore",72000),
(08,"Amit",32,"M","1992-09-08","Web Developer","Pune",50000),
(09,"Sayan",29,"M","1995-02-10","Software","Kolkata",54000),
(10,"Sangeeta",28,"F","1996-11-15","Software","Mumbai",82000),
(11,"Raunak",29,"M","1995-11-09","Accounts","Hyderabad",72000),
(12,"Riyan",27,"M","1997-07-07","Logistic","Rajasthan",75500),
(14,"Sraboni",30,"F","1994-03-04","Data Analyst","Delhi",65000),
(15,"Abir",28,"M","1996-01-04","Logistic","Delhi",50000),
(16,"Tanya",26,"F","1998-12-12","Logistic","Kolkata",55000),
(17,"Akash",32,"M","1992-10-16","Software","Rajasthan",75400),
(18,"Ankur",32,"M","1992-10-21","Logistic","Bihar",55400),
(19,"Ranit",30,"M","1994-07-06","Data Analyst","Kolkata",75400),
(20,"Ayushman",40,"M","1984-02-10","Manager","Kolkata",225400);
select * from employee;
delete from employee where Emp_ID between 01 and 21;
describe employee;
insert into employee values(01,"Prajesh",38,"M","1986-11-18","Software","Mumbai",125000),
(02,"Anubhab",27,"M","1997-02-05","Sales","Kolkata",75000),
(03,"Ruchita",28,"F","1996-05-19","Sales","Pune",56000),
(04,"Anlita",30,"F","1994-01-01","Data Analyst","Delhi",85000),
(05,"Tarak",35,"M","1989-06-11","Sales","Hyderabad",77500),
(06,"Sandeep",30,"M","1994-02-24","Accounts","Bangalore",62000),
(07,"Smriti",26,"F","1998-08-03","Accounts","Bangalore",72000),
(08,"Amit",32,"M","1992-09-08","Web Developer","Pune",50000),
(09,"Sayan",29,"M","1995-02-10","Software","Kolkata",54000),
(10,"Sangeeta",28,"F","1996-11-15","Software","Mumbai",82000),
(11,"Raunak",29,"M","1995-11-09","Accounts","Hyderabad",72000),
(12,"Riyan",27,"M","1997-07-07","Logistic","Rajasthan",75500),
(14,"Sraboni",30,"F","1994-03-04","Data Analyst","Delhi",65000),
(15,"Abir",28,"M","1996-01-04","Logistic","Delhi",50000),
(16,"Tanya",26,"F","1998-12-12","Logistic","Kolkata",55000),
(17,"Akash",32,"M","1992-10-16","Software","Rajasthan",75400),
(18,"Ankur",32,"M","1992-10-21","Logistic","Bihar",55400),
(19,"Ranit",30,"M","1994-07-06","Data Analyst","Kolkata",75400),
(21,"Anurag",28,"M","1996-02-09","Sales","Mumbai",70000),
(20,"Ayushman",40,"M","1984-02-10","Manager","Kolkata",225400);
select * from employee;
select distinct City from employee;
select distinct Department from employee;
select avg(Salary) from employee group by Department;
select Department,avg(Salary) as Average_Salary from employee group by Department;
select Department,sum(Salary) as Total_Salary from employee group by Department;
select Department,round(avg(Age),1) as Average_Age_of_Employees from employee group by Department;
select count(Emp_ID) from employee;
select count(Emp_ID),City from employee group by City order by count(Emp_ID);
select count(Emp_ID),City from employee group by City order by count(Emp_ID) desc;
select Department,count(City) from employee group by Department Order by count(City);
show databases;
use sql_intro;
show tables;
select * from employee;
select year(Date_of_Join) as Year,count(Emp_ID) from employee group by year(Date_of_Join);
select year(Date_of_Join) as Year,count(Emp_ID) from employee group by year(Date_of_Join) order by count(Emp_ID) desc;
select year(Date_of_Join) as Year,count(Emp_ID) from employee group by year(Date_of_Join) order by count(Emp_ID);
select Department,sum(Salary) as Total_Salary from employee group by Department order by sum(Salary);
select Department,sum(Salary) as Total_Salary from employee group by Department order by sum(Salary) desc;
select Sex,avg(Salary) as Average_Salary from employee group by Sex order by avg(Salary);
select Sex,avg(Salary) as Average_Salary from employee group by Sex order by avg(Salary) desc;
select Department,count(City) as Residential_Place from employee group by Department order by count(City);
select Department,count(City) as Residential_Place from employee group by Department order by count(City) desc;
select Department,round(avg(Salary),1) as Average_Salary from employee group by Department order by round(avg(Salary),1) desc;
select City,count(Emp_ID) as Number_of_Employee from employee group by City order by count(Emp_ID) desc;
/* Use group by clause to join two or more tables */
show databases;
use sql_intro;
show tables;
select * from employee;
select * from employee_details;
create table Sales(Product_ID int,Sell_Price float,Quantity int,State varchar(20));
describe Sales;
insert into Sales values(121,250.00,30,"Available"),
(122,147.50,20,"Available"),
(123,265.00,45,"Available"),
(124,375.00,75,"Not-Available"),
(125,150.00,30,"Available"),
(126,405.00,100,"Available"),
(127,250.00,75,"Not-Available"),
(128,110.00,15,"Available"),
(129,135.00,20,"Available"),
(130,276.00,45,"Not-Available"),
(131,234.00,35,"Not-Available"),
(132,288.00,60,"Available"),
(133,30.00,10,"Available"),
(134,90.00,25,"Available"),
(135,50.00,20,"Not-Available"),
(136,120.00,45,"Available"),
(137,100.00,30,"Available"),
(138,320.00,65,"Not-Available"),
(139,220.00,70,"Available"),
(140,256.50,35,"Available");
select * from Sales;
select Product_ID,sum(Sell_Price * Quantity) as Revenue from Sales group by Product_ID;
select Product_ID,sum(Sell_Price * Quantity) as Revenue from Sales group by Product_ID order by sum(Sell_Price * Quantity) desc;
create table c_product(Product_ID int,Cost_Price float);
describe c_product;
insert into c_product values(121,200.00),(123,250.00),(126,300.00),(135,40.00),(140,190.00);
select * from c_product;
/* Next we will join our Sales table and c_product table */
select c.Product_ID,sum((s.Sell_Price-c.Cost_Price)*Quantity) as Profit from Sales as s inner join c_product as c where s.Product_ID=c.Product_ID group by c.Product_ID;
/* Having Clause in SQL */
show databases;
use sql_intro;
show tables;
select * from employee;
select count(Emp_ID)as Number_of_Employee,City from employee group by City having count(Emp_ID) > 2 order by count(Emp_ID) desc;
select * from employee;
/* We want to find those Departments where average salary is greater than 50000 */
select Department,avg(Salary) as Average_salary from employee group by Department having avg(Salary) > 50000 order by avg(Salary) desc;
select City,sum(Salary) as Total_Salary from employee group by City having sum(Salary) > 150000 order by sum(Salary) desc;
select Department,count(*) as Employee_count from employee group by Department having count(*) > 2 order by count(*) desc;
select Department,count(Emp_ID) as Employee_count from employee group by Department having count(Emp_ID) > 2 order by count(Emp_ID) desc;
select City,count(*) as Employee_count from employee where City!="Mumbai" group by City having count(*) > 2 order by count(*) desc;
select Department,count(*) as Employee_count,avg(Salary) as Average_Salary from employee group by Department having avg(Salary) > 75000 order by count(*) desc;

