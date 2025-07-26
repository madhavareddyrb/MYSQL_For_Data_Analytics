-- Keys are constraints or atributes mainlt relation integrity and uniqueness

-- 1.Primary key - not null,must be unique, only one primary key for table
show databases;
use employees;
show tables;

drop table if exists staff;
create table if not exists staff(
	Emp_Id int primary key,
    Emp_name varchar(50) not null,
    department varchar(50)
);
select * from staff;

-- composite key -- A key made up of two or more columns to uniquely identify a record.

create table orders(
	order_id int,
    order_date date,
    primary key (order_id,order_date)
    
);

-- candidate key-To represent candidate keys, you can add UNIQUE constraints to all possible columns, 
-- then later choose one as PRIMARY KEY.no seperate candidate key like peimary key

create table Users(
	user_id int,
    order_id int,
    user_email varchar(40),
    Primary key (user_id),
    unique (user_email)
);

-- foreign key - used for relationshps between tables
show tables;
drop table if exists department;
create table department(
	Emp_Id int primary key,
    emp_name varchar(40),
    department varchar(50),
    foreign key (Emp_Id) References staff (Emp_Id)
);
select * from department;


-- Unique
drop table if exists products;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    purchase_id VARCHAR(50) UNIQUE
);
select * from products;

--  Surrogate Key - Implemented using AUTO_INCREMENT (MySQL) or IDENTITY (SQL Server):

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100)
);








