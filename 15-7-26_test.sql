/*
Part A
Which of the following is a DDL command?(c)
a) INSERT
b) UPDATE
c) CREATE
d) DELETE
Which command is used to create a new database?(b)
a) MAKE DATABASE
b) CREATE DATABASE
c) ADD DATABASE
d) NEW DATABASE
Which SQL command removes all records from a table but keeps its structure?(c)
a) DROP
b) DELETE
c) TRUNCATE
d) REMOVE
Which command deletes the table structure and data permanently?(b)
a) TRUNCATE
b) DROP
c) DELETE
d) CLEAR
Which command is used to rename an existing table?(b)
a) MODIFY TABLE
b) RENAME TABLE old_name TO new_name;
c) CHANGE TABLE
d) UPDATE TABLE
The INSERT command is used to:(a)
a) Add new rows to a table
b) Delete records
c) Change column names
d) Create a database
The UPDATE command is used to:(b)
a) Add a column
b) Modify existing data
c) Create a new table
d) Remove duplicate records
Which command is used to delete specific records from a table?(b)
a) TRUNCATE
b) DELETE
c) DROP
d) REMOVE
Which command is used to retrieve data from one or more tables?(a)
a) SELECT
b) INSERT
c) UPDATE
d) REMOVE
Which of the following is a DML command?(d)
a) CREATE
b) DROP
c) TRUNCATE
d) INSERT

Part B 
Write a SQL command to create a database named CompanyDB.
→ CREATE DATABASE companyDB;
Write a command to create a table named Employee with columns:
EmpID INT, EmpName VARCHAR(50), Salary DECIMAL(10,2).
→ CREATE TABLE Employee(
    EmpID int,
    EmpName varchar(50),
    Salary decimal(10,2));
Write a command to insert multiple records into the Employee table in a single query.
→ INSERT INTO employee values(v1,v2,v3),(v1,v2,v3).....);
Write a SQL command to update the Salary of employee Ravi to 55000.
→ Update employee set salary=55000 where empname= ‘Ravi’;
Write a command to increase the salary of all employees by 10%.
→ update employee set salary = salary * 1.10;
Write a SQL command to delete an employee record where EmpID = 103.
→ delete from employee where empid=103;
Write a command to delete all records from Employee but keep its structure.
→ truncate table employee;
Write a SQL command to remove the Employee table completely from the database.
→ drop table employee;
Write a command to rename the Employee table to Staff.
→ rename table employee to staff;
Write a SQL command to drop the database CompanyDB.
→ Drop database companyDB;
Write an SQL query to display the names and salaries of employees whose salary is greater than 50000 using the WHERE clause.
→ select empname,salary from employee where salary> 50000;
Write an SQL query to display the total salary of each department using the GROUP BY clause.
→ select sum(salary),department from employee group by department;
Write an SQL query to display the departments where the average salary is greater than 60000 using the HAVING clause.
Display the first 5 rows in a table
→ Select * from employee limit 5;
What is difference between primary key and foreign key and explain about joins
#Primary key: (unique+not null)
#foreign key (col_name) references tab_name(col_name)    
Joins: merge of 2 or more tables using join commands.
Inner join:
Select * from  tb_name1 inner join tb_name2 on tb_name1.id= tb;
Left join:
 Select * from  tb_name1 left join tb_name2 on tb_name1.id= tb; 
Right join:
Select * from  tb_name1 right join tb_name2 on tb_name1.id= tb;
Cross join:
Select * from  tb_name1 join tb_name2 on tb_name1.id= tb; 
Self join:
With condition : return inner join.
Without cond: return cross join.                                                            
*/
