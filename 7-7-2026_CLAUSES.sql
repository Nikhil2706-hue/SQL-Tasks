#Topic: Clauses.
create table team(
empid int primary key,
name varchar(50),
department varchar(30),
salary decimal(10,2),
age int,
city varchar(30),
doj date
);
desc team;
INSERT INTO team VALUES
(101, 'Alice', 'HR', 45000, 25, 'Hyderabad', '2022-01-10'),
(102, 'Bob', 'IT', 70000, 30, 'Chennai', '2021-06-15'),
(103, 'Charlie', 'Finance', 55000, 28, 'Bangalore', '2020-08-20'),
(104, 'David', 'IT', 80000, 35, 'Hyderabad', '2019-03-12'),
(105, 'Eva', 'HR', 48000, 27, 'Mumbai', '2023-02-18'),
(106, 'Frank', 'Sales', 60000, 31, 'Delhi', '2021-11-25'),
(107, 'Grace', 'Finance', 75000, 29, 'Chennai', '2018-09-10'),
(108, 'Henry', 'Sales', 52000, 26, 'Bangalore', '2022-07-05'),
(109, 'Ivy', 'IT', 90000, 32, 'Mumbai', '2017-05-30'),
(110, 'Jack', 'HR', 47000, 24, 'Delhi', '2023-01-12');

INSERT INTO team VALUES
(111, 'Arjun', 'IT', 68000, 29, 'Hyderabad', '2022-05-12'),
(112, 'hema', 'HR', 51000, 26, 'Pune', '2021-09-18'),
(113, 'Karthik', 'Finance', 72000, 31, 'Bangalore', '2020-11-22'),
(114, 'Mani', 'Sales', 58000, 27, 'Chennai', '2023-03-15'),
(115, 'Rohit', 'Marketing', 62000, 30, 'Delhi', '2019-07-10'),
(116, 'Pooja', 'IT', 85000, 34, 'Mumbai', '2018-04-05'),
(117, 'Vikram', 'Finance', 67000, 28, 'Hyderabad', '2022-08-20'),
(118, 'Ananya', 'HR', 49000, 25, 'Kolkata', '2023-06-01'),
(119, 'Suresh', 'Sales', 54000, 32, 'Pune', '2021-01-14'),
(120, 'Divya', 'Marketing', 76000, 29, 'Bangalore', '2020-12-30');

#Display all employees whose salary is greater than 60,000.
select * from team where salary >=60000;

#Display employees who belong to the IT department.
select * from team where department = 'IT';

#Display employees whose age is less than 30.
select * from team where age <= 30;

#Display employees who are from Hyderabad and order them by salary in ascending order.
select * from team where city = 'Hyderabad' order by salary;

#Display all employees and sort them by salary in descending order.
select * from team order by salary desc;

#Display employees whose salary is between 50,000 and 80,000, ordered by age.
select * from team where salary between 50000 and 80000 order by age;

#Display employees whose department is HR, ordered by name alphabetically.
select * from team where department = 'HR' order by name;

#Display employees who joined after '2021-01-01', ordered by joining date (latest first).
select * from team where doj > '2021-01-01' order by doj desc;

#Display employees whose city is Chennai or Bangalore, ordered by city and then salary descending.
select * from team where city = 'Chennai' or 'Bangalore' order by city and salary desc;

#Display employees whose age is greater than 25, ordered by department (A–Z) and then salary (highest to lowest).
select * from team where age >=25 order by department, salary desc;



create table e_commerce_orders (
order_id int primary key,
customer_name varchar(100),
product_name varchar(100),
quantity int,
price decimal(10, 2),
total_amount decimal(10, 2),
order_date date
);
desc e_commerce_orders;
INSERT INTO e_commerce_orders (order_id, customer_name, product_name, quantity, price, total_amount, order_date)VALUES
(1, 'Ravi Kumar', 'Smartphone', 1, 699.99, 699.99, '2025-10-01'),
(2, 'Amit Sharma', 'Laptop', 1, 999.99, 999.99, '2025-10-02'),
(3, 'Raj Patel', 'Headphones', 2, 49.99, 99.98, '2025-10-03'),
(4, 'Neha Gupta', 'Smartwatch', 1, 199.99, 199.99, '2025-10-04'),
(5, 'Priya Mehta', 'Tablet', 1, 329.99, 329.99, '2025-10-05'),
(6, 'Vikram Singh', 'Keyboard', 1, 89.99, 89.99, '2025-10-06'),
(7, 'Sonia Reddy', 'Mouse', 2, 19.99, 39.98, '2025-10-07'),
(8, 'Ravi Sharma', 'Monitor', 1, 249.99, 249.99, '2025-10-08'),
(9, 'Ananya Iyer', 'Phone Case', 3, 15.99, 47.97, '2025-10-09'),
(10, 'Karan Joshi', 'Smartphone', 2, 699.99, 1399.98, '2025-10-10'),
(11, 'Maya Desai', 'Gaming Console', 1, 399.99, 399.99, '2025-10-11'),
(12, 'Rohit Kapoor', 'Speakers', 2, 79.99, 159.98, '2025-10-12'),
(13, 'Simran Chawla', 'Laptop', 1, 849.99, 849.99, '2025-10-13'),
(14, 'Amitabh Reddy', 'Smartwatch', 1, 199.99, 199.99, '2025-10-14'),
(15, 'Tanya Gupta', 'Smartphone', 1, 799.99, 799.99, '2025-10-15'),
(16, 'Harish Kaur', 'Tablet', 1, 299.99, 299.99, '2025-10-16'),
(17, 'Deepak Singh', 'Keyboard', 2, 69.99, 139.98, '2025-10-17'),
(18, 'Neelam Verma', 'Headphones', 1, 89.99, 89.99, '2025-10-18'),
(19, 'Kunal Joshi', 'Gaming Console', 1, 499.99, 499.99, '2025-10-19'),
(20, 'Pooja Shah', 'Monitor', 1, 199.99, 199.99, '2025-10-20');
 INSERT INTO e_commerce_orders
(order_id, customer_name, product_name, quantity, price, total_amount, order_date)
VALUES
(21, 'Ravi Kumar', 'Laptop', 1, 949.99, 949.99, '2025-10-21'),
(22, 'Amit Sharma', 'Smartwatch', 2, 199.99, 399.98, '2025-10-22'),
(23, 'Raj Patel', 'Monitor', 1, 249.99, 249.99, '2025-10-23'),
(24, 'Neha Gupta', 'Tablet', 2, 329.99, 659.98, '2025-10-24'),
(25, 'Priya Mehta', 'Headphones', 3, 49.99, 149.97, '2025-10-25'),
(26, 'Vikram Singh', 'Gaming Console', 1, 399.99, 399.99, '2025-10-26'),
(27, 'Sonia Reddy', 'Keyboard', 2, 89.99, 179.98, '2025-10-27'),
(28, 'Ravi Sharma', 'Mouse', 4, 19.99, 79.96, '2025-10-28'),
(29, 'Ananya Iyer', 'Smartphone', 1, 699.99, 699.99, '2025-10-29'),
(30, 'Karan Joshi', 'Speakers', 2, 79.99, 159.98, '2025-10-30');
 select * from e_commerce_orders;
 
#1.Display all orders where the price is greater than 500.
select * from e_commerce_orders where price > 500;

#2.Retrieve all orders placed by the customer 'Ravi Kumar'.
select * from e_commerce_orders where customer_name = 'Ravi Kumar';
select customer_name, order_id, product_name from e_commerce_orders where customer_name = 'Ravi Kumar';

#3.Show all orders for the product 'Laptop'.
select * from e_commerce_orders where product_name = 'Laptop';
select  product_name, order_id, quantity from e_commerce_orders where product_name = 'Laptop';

#4.List all orders placed between '2025-10-05' and '2025-10-15'.
select * from e_commerce_orders where order_date between '2025-10-05' and '2025-10-15';

#5.Find all distinct product names from the e_commerce_orders table.
select distinct product_name from e_commerce_orders;

#6.Display all unique customer names who bought a 'Smartphone'.
select distinct customer_name from e_commerce_orders where product_name='smartphone';

#7.Show all orders sorted by order_date in ascending order.
select * from e_commerce_orders order by order_date; 

#8.Display all orders sorted by total_amount in descending order.
select * from e_commerce_orders order by total_amount desc;

#9.Retrieve the first 5 orders using the LIMIT clause.
select * from e_commerce_orders limit 5;

#10.Display the last 3 orders when sorted by order_date.
select * from e_commerce_orders order by order_date limit 27,3;

#11.Find all orders where the customer_name starts with the letter 'R'.
select *from e_commerce_orders where customer_name like 'R%';

#12.Show all products where the price is between 100 and 500.
select * from e_commerce_orders where price between 100 and 500;

#13.List all orders where the quantity is more than 1.
select * from e_commerce_orders where quantity > 1;

#14.Display all orders where the product_name is not 'Smartphone'.
select * from e_commerce_orders where product_name != 'Smartphone';

#15.Show all distinct customers who ordered on '2025-10-10'.
select distinct customer_name from e_commerce_orders where order_date = '2025-10-10';