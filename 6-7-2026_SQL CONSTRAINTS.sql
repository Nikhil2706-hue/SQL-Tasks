#6-7-2026

create database TASK;
use task;
show tables;

/*Task 1: Create a Student Table
Create a table Students with the following requirements:
student_id → Auto-incrementing primary key
email → Must be unique
name → Cannot be null
age → Must be between 18 and 30
city → Default value should be 'Hyderabad'*/

create table Students(
stu_id int unique auto_increment,
name varchar(100) not null,
age int check (age>=18 and age<=30),
email varchar(100) unique,
city varchar(50) default 'Hyderabad'
);

desc students;

insert into students values
(1000,'Nikhil',22,'2706nikhil@gmail.com', 'ongole');
insert into students(name,age,email) values
('Nani',30, 'nani123@gmail.com'),
('Kumar',24,'sai18@gmail.com'),
('Ravi',27, 'r781@gmail.com'),
('Sai',24,'sai78@gmail.com');

select *from students;

/*Task 2: Create an Employee Table
Create a table Employees with:
emp_id → Auto-incrementing primary key
emp_name → Not null
email → Unique
salary → Must be greater than 15000
joining_date → Default current date*/

create table Employee(
emp_id int unique auto_increment,
emp_name varchar(100) not null,
email varchar(25) unique,
salary int check(salary>15000),
joining_date date default (current_date)
);
desc employee;

insert into Employee(emp_name,email,salary) values
('Nikhil','2706nikhil@gmail.com', 21000),
('Harry','27hary@gmail.com',15500),
('Deepakl','deep@gmail.com', 30000),
('Ravi','ravi78@gmail.com',40000);

select *from employee;

/*Task 3: Product Management
Create a table Products with:
product_id → Auto-incrementing primary key
product_name → Not null
barcode → Unique
price → Must be greater than 0
stock → Default 0 */

create table products(
pro_id int unique auto_increment,
pro_name varchar(100) not null,
barcode bigint unique,
price int check(price>0),
stock int default 0
);
desc products;
insert into products (pro_name, barcode, price, stock)values
('mouse', 1234567890124, 500, 10),
('Keyboard', 634567890125, 1200, 10),
('laptop', 87734567890123, 55000, 3),
('Printer', 9764567890127, 8500, 10),
('Headphones', 1234567890132, 3000, 5);
insert into products (pro_name, barcode, price)values
('USB', 1234567890128, 399),
('SSD', 1234567890324, 1550);

select *from products;

/*Bonus Task:
Write a single CREATE TABLE statement for a Customers table that uses all five constraints:
AUTO_INCREMENT
PRIMARY KEY
UNIQUE
NOT NULL
CHECK
DEFAULT
Then insert sample records to demonstrate each constraint */

create table Customers (
branch_id  int primary key,
manager_id int unique auto_increment,
manager_name varchar(100) not null,
email varchar(100) unique,
age int check (age >= 18),
city varchar(50) default 'Hyderabad'
);
desc customers;

insert into Customers (branch_id, manager_name, email, age, city)values
(1001, 'Nikhil', 'nikhil@gmail.com', 22, 'Hyderabad'),
(1002, 'Rahul', 'rahul@gmail.com', 25, 'Bangalore'),
(1003, 'Priya', 'priya@gmail.com', 28, 'Chennai'),
(1004, 'Anjali', 'anjali@gmail.com', 30, 'Hyderabad'),
(1005, 'Kiran', 'kiran@gmail.com', 35, 'Mumbai');

select *from customers;





