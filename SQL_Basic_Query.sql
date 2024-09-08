show databases;
use sql_intro;
CREATE TABLE cd_facilities(facid int, Name varchar(30),MemberCost float,GuestCost float,InitialOutlay numeric,MonthlyMaintenence float);
DESCRIBE cd_facilities;
INSERT INTO cd_facilities values (0,"Tennis Court 1",5,25,10000,200),
(1,"Tennis Court 2",5,25,8000,200),
(2,"Badminton Court",0,15.5,4000,50),
(3,"Table Tennis",0,5,320,10),
(4,"Massage Room 1",35,80,4000,3000),
(5,"Massage Room 2",35,80,4000,3000),
(6,"Squash Court",3.5,17.5,5000,80),
(7,"Snooker Table",0,5,450,15),
(8,"Pool Table",0,5,400,15);
SELECT * from cd_facilities;
SELECT Name,MemberCost from cd_facilities;
SELECT * from cd_facilities where MemberCost != 0;
SELECT facid,Name,MemberCost,MonthlyMaintenence from cd_facilities where MemberCost > 0 AND MemberCost < MonthlyMaintenence/50;
SELECT * from cd_facilities where Name like "%Tennis%";
SELECT * from cd_facilities where facid in (1,5);
SELECT Name, 
case when (MonthlyMaintenence > 100) then
"Expensive"
else 
"Cheap"
end as Cost
from cd_facilities;
Drop table cd_members;
CREATE TABLE cd_members (Member_ID int,Surname varchar(30),FirstName varchar(30),Joining_Date timestamp);
DESCRIBE cd_members;
insert into cd_members values (24,"Sarwin","Ramnaresh","2012-09-01 08:44:42"),
(26,"Jones","Douglas","2012-09-02 18:43:05"),
(27,"Rumney","Henrietta","2012-09-05 08:42:35"),
(28,"Farrell","David","2012-09-15 08:22:05"),
(29,"Worthington-Smyth","Henry","2012-09-17 12:27:15"),
(30,"Purview","Millicent","2012-09-18 19:04:01"),
(33,"Tupperware","Hyacinth","2012-09-18 19:32:05"),
(35,"Hunt","John","2012-09-19 11:32:45"),
(36,"Crumpet","Erica","2012-09-22 08:36:38"),
(37,"Smith","Darren","2012-09-26 18:08:45");
SELECT * from cd_members;
SELECT * from cd_members where Joining_Date >= 2012-09-01;
SELECT DISTINCT Surname from cd_members order by Surname limit 5;
select Surname from cd_members union select Name from cd_facilities;
select Joining_Date as Latest from cd_members where Member_ID=37;
select max(Joining_Date) as Latest from cd_members;
select min(Joining_Date) as Latest from cd_members;
select Surname,FirstName,Joining_Date from cd_members where Joining_Date =(select max(Joining_Date) from cd_members);
create table cd_bookings (facid int,memid int,Start_Time timestamp,Slot int);
DESCRIBE cd_bookings;
insert into cd_facilities values (9,"Spa",20,30,100000,800);
select * from cd_facilities;
insert into cd_facilities values (10,"Squash Court 1",3.5,17.5,5000,80),
(11,"Squash Court 2",3.6,25,6000,90);
select * from cd_facilities;
insert into cd_facilities (facid, Name, MemberCost, GuestCost, InitialOutlay, Monthlymaintenence)
select(select max(facid) from cd_facilities)+1,"Spa", 20, 30, 100000, 800;
select * from cd_facilities;
SET SQL_SAFE_UPDATES=0;
update cd_facilities set InitialOutlay=InitialOutlay+4000 where Name="Tennis Court 2";
select * from cd_facilities;
update cd_facilities 
set MemberCost=6,
GuestCost=30 where facid in(0,1);
select * from cd_facilities;


