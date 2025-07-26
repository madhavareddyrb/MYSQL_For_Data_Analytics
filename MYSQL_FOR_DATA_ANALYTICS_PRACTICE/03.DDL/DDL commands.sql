use employees;
show tables;

-- 1.Create Table
create table EmployeesDetailes(employee_id INT,name varchar(50), age int, department varchar(40));
show tables;
select * from EmployeesDetailes;

-- if not exists

create table if not exists EmployeeDetailes(employee_id int);
show tables;

-- drop command- delete the table if exists
drop table if exists EmployeeDetailes;
show tables;

-- table with CHECK constraints
drop table EmployeesDetailes;
create table if not exists EmployeesDetailes(employee_id int, name varchar(40), age int check(age>=18), department varchar(50));
show tables;
select * from EmployeesDetailes;

-- Alter used to change names of columns and tables
alter table EmployeesDetailes add column mail varchar(50);
select * from EmployeesDetailes;

-- renameing the column name
alter table EmployeesDetailes rename column mail to Email_id;
select * from EmployeesDetailes;

-- drop-used to drop tables
alter table EmployeesDetailes drop column Email_id;
select * from EmployeesDetailes;

-- Turncate - deletes table rows faster than drop but table structure is present
create table if not exists EmployeeDetailes(employee_id int);
truncate table EmployeeDetailes;

-- rename table 
rename table EmployeeDetailes to staff;
show tables;




