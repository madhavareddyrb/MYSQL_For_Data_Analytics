-- create database dmlCommands;
show databases;

use dmlCommands;
-- creating table to perform actions

create table if not exists Employees(
		emp_id serial primary key,
        first_name varchar(30),
        last_name varchar(30),
        hire_date date);
select * from Employees;

-- insert in single row
insert into employees(emp_id,first_name,last_name,hire_date)
values (1,'madhava','reedy','2024-05-29');
select * from employees;

-- inserting multiple rows at a time
insert into employees(emp_id,first_name,last_name,hire_date)
values (2,'sam','alton','2000-05-20'),
		(3,'sundar','pichai','2014-03-20'),
        (4,'reddy','madhava','2002-08-2');
select * from employees;

-- adding partial data (some columns data only)
insert into employees (first_name,last_name)
values ('king','nagarjuna');
select * from employees;  -- automatically emp_id is generated becuase we have use serial primary key

-- insering data in different order
insert into employees(hire_date,last_name,emp_id,first_name)
values ('2020-12-23','anna',7,'yogi');
select * from employees;

-- adding current date has default if date is not inserting manually
drop table if exists Employeetable;
create table EmployeeTable(
		emp_id serial primary key,
        name varchar(50) not null,
        hire_date timestamp default current_timestamp,
        status varchar(50) default 'active');
insert into employeetable(name) values ('madhava');
-- all values are updated emp_id(autogenerate),name inserted value,date(present date added,status default active)
select * from employeetable;




        

        