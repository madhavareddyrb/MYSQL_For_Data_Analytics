-- limit is used to select top 5, middle 5 from where we want like that

-- top 5 employees

use employees;
select * from employees;

select * from employees limit 5 ;

-- offset is used to search from 20 - 25 ,or any other number offset is 0 by deafult
select * from employees limit 5 offset 20;
-- we will explore more later

-- Order by is used to sort like desc,asc

select * from employees order by age ;

select * from employees order by name;

select * from employees order by age asc;
select * from employees order by department desc;


