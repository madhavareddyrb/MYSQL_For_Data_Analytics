use employees;

select * from employees;
-- sql is not case senstive
SELECT * FROM EMPLOYEES;
-- use semicolon at every command last
-- getting whose age is greather than 30

select * from employees where age > 30 ;

-- getting whose age is greaterthan 30 and from sales
select * from employees where age > 30 and department = "Sales";

-- getting whose age is between 20 and 40
select * from employees where age > 20 and age < 40;

-- using between instand of and
select * from employees where age between 20 and 40 ;

-- getting employees name whose working in sales and marketing
select * from employees where department = 'sales' or department = 'marketing' ;

-- using "in" to get employees who are working in sales and marketing
select * from employees where department in ('Hr','marketing');
-- not in 
select * from employees where department not in ('sales','marketing');

-- instand of or if we use and output is null because no one is working on 2 departments at a time

-- checking employee_name starting with letters we use name "like" method
select * from employees where name like 'J%';

-- employees with null values and not null values
select * from employees where department is null;
select * from employees where department is not null;

-- using "in" "and" where age > 30 and who is working in hr,sales
select * from employees where (department in ('hr','sales')) and age > 30;


