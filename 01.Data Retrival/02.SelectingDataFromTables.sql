show databases;
use employees;
select * from employees;
-- another method to select table
select * from employees.Employees;
-- small employees is DB and Employees is table name sql is not case sensivity
select name,age from employees;

select age,name from Employees;

-- changing name of table column
select name as employee_name from employees;

-- chnaging two at a time
select name as employee_name,age as employee_age from employees;



