use task;
show tables;
#Table 1: Customers
create table customers1 (
customer_id int,
first_name varchar(50),
last_name varchar(50),
email varchar(100),
phone_number varchar(20),
address text,
date_joined date
);

#Table 2: Orders
create table orders1 (
order_id int,
customer_id int,
order_date date,
total_amount decimal(10,2),
shipping_address text,
payment_status varchar(20)
);


#Table 3: Products
create table products1 (
product_id int,
name varchar(100),
description text,
price decimal(10,2),
stock_quantity int,
category_id int
);

#Table 4: Categories
create table categories1 (
category_id int,
category_name varchar(100),
description text
);

#Table 5: Order_Items
create table order_Items1 (
order_item_id int,
order_id int,
product_id int,
quantity int,
item_price decimal(10,2)
);

insert into customers1 values
(1,'rahul','reddy','rahul@gmail.com','9876543210','hyderabad','2024-01-10'),
(2,'sneha','sharma',null,'9876543211','bangalore','2024-02-15'),
(3,'kiran','kumar','kiran@gmail.com',null,'chennai','2024-03-20'),
(4,'priya','nair','priya@gmail.com','9876543213',null,'2024-04-12'),
(5,'arun','patel','arun@gmail.com','9876543214','pune',null);

insert into categories1 values
(101,'electronics','electronic gadgets and devices'),
(102,'clothing','men and women clothing'),
(103,'books',null),
(104,'home appliances','household appliances'),
(105,'sports',null);

insert into products1 values
(201,'laptop','dell laptop',65000.00,20,101),
(202,'mobile','android smartphone',25000.00,35,101),
(203,'tshirt',null,800.00,100,102),
(204,'python book','programming book',950.00,null,103),
(205,'mixer','kitchen mixer',3500.00,15,104),
(206,'football',null,1200.00,25,105);

insert into orders1 values
(301,1,'2024-06-01',65000.00,'hyderabad','paid'),
(302,2,'2024-06-05',25800.00,'bangalore','paid'),
(303,3,'2024-06-10',950.00,null,'pending'),
(304,4,'2024-06-15',4700.00,'mumbai',null),
(305,5,null,1200.00,'pune','pending');


insert into order_items1 values
(401,301,201,1,65000.00),
(402,302,202,1,25000.00),
(403,302,203,1,800.00),
(404,303,204,1,950.00),
(405,304,205,null,3500.00),
(406,304,203,1,null),
(407,305,206,1,1200.00);

#1.Join the Customers table with the Orders table to list all orders made by a specific customer.
select * from customers1 inner join orders1 on customers1.customer_id = orders1.customer_id where customers1.customer_id=1;

#2.Find all orders placed by customers who live in a specific city (using the address field in Customers table).
select * from orders1 left join customers1 on customers1.customer_id = orders1.customer_id where customers1.address='chennai';

#3.List the products and their categories by joining the Products and Categories tables.
select products1.product_id,products1.name,categories1.Category_name from categories1 right join products1 on products1.category_id = categories1.category_id;

#4.Get a list of all products purchased by a particular customer, including their name, description, and quantity ordered (using Orders, Order_Items, and Products).
select customers1.customer_id, customers1.first_name, customers1.last_name, products1.description,order_Items1.quantity 
from orders1 inner join customers1 on customers1.customer_id = orders1.customer_id
inner JOIN order_items1 on orders1.order_id = order_items1.order_id
inner join products1 on order_items1.product_id = products1.product_id WHERE customers1.customer_id = 2;

#5. Get a list of all products purchased by a particular customer, including their name, description, and quantity ordered (using Orders, Order_Items, and Products).
select products1.name,
products1.description,
order_items1.quantity
from customers1
join orders1
on customers1.customer_id=orders1.customer_id
join order_items1
on orders1.order_id=order_items1.order_id
join products1
on order_items1.product_id=products1.product_id
where customers1.customer_id=1;

#6. Join Order_Items with Orders to get a list of all products ordered along with the order's total amount.
select order_items1.order_id,
order_items1.product_id,
order_items1.quantity,
orders1.total_amount
from order_items1
join orders1
on order_items1.order_id=orders1.order_id;

#7. Find the total number of items ordered for each product (using Order_Items and Products).
select products1.product_id,
products1.name,
sum(order_items1.quantity) as total_items
from products1
join order_items1
on products1.product_id=order_items1.product_id
group by products1.product_id,products1.name;

#8. Find the customer who placed the highest value order (using Orders and Customers).
select customers1.customer_id,
customers1.first_name,
customers1.last_name,
orders1.total_amount
from customers1
join orders1
on customers1.customer_id=orders1.customer_id
order by orders1.total_amount desc
limit 1;

#9. Get a list of all customers who ordered a specific product (join Customers, Orders, and Order_Items).
select customers1.customer_id,
customers1.first_name,
customers1.last_name
from customers1
join orders1
on customers1.customer_id=orders1.customer_id
join order_items1
on orders1.order_id=order_items1.order_id
where order_items1.product_id=201;

#10. Join Products and Order_Items to find the total revenue generated by each product.
select products1.product_id,
products1.name,
sum(order_items1.quantity*order_items1.item_price) as total_revenue
from products1
join order_items1
on products1.product_id=order_items1.product_id
group by products1.product_id,products1.name;

#11. Find the most popular product in each category (using Products, Order_Items, and Categories).
select categories1.category_name,
products1.name,
sum(order_items1.quantity) as total_sold
from categories1
join products1
on categories1.category_id=products1.category_id
join order_items1
on products1.product_id=order_items1.product_id
group by categories1.category_name,products1.name
order by total_sold desc;

#12. Get a list of all orders with their corresponding products, including product name and quantity ordered (using Orders, Order_Items, and Products).
select orders1.order_id, products1.name, order_items1.quantity
from orders1
join order_items1
on orders1.order_id=order_items1.order_id
join products1
on order_items1.product_id=products1.product_id;

#13. Find the average number of items ordered per customer (using Orders and Order_Items).
select customers1.customer_id, customers1.first_name,
avg(order_items1.quantity) as avg_items
from customers1
join orders1
on customers1.customer_id=orders1.customer_id
join order_items1
on orders1.order_id=order_items1.order_id
group by customers1.customer_id,customers1.first_name;

#14. List customers who have not placed any orders (using Customers and Orders).
select *
from customers1
left join orders1
on customers1.customer_id=orders1.customer_id
where orders1.order_id is null;

#15. Find all orders that contain more than 5 items, including customer details (using Orders, Order_Items, and Customers).
select orders1.order_id, customers1.first_name, customers1.last_name,
sum(order_items1.quantity) as total_items
from orders1
join customers1
on orders1.customer_id=customers1.customer_id
join order_items1
on orders1.order_id=order_items1.order_id
group by orders1.order_id,customers1.first_name,customers1.last_name
having sum(order_items1.quantity)>5;

#16. List the total number of products sold per category (using Products, Order_Items, and Categories).
select categories1.category_name,
sum(order_items1.quantity) as total_products_sold
from categories1
join products1
on categories1.category_id=products1.category_id
join order_items1
on products1.product_id=order_items1.product_id
group by categories1.category_name;


#17. Find all orders placed in the last 30 days along with the products purchased (using Orders, Order_Items, and Products).



#18. Get a list of products that are out of stock and were previously ordered (using Products and Order_Items).
select distinct products1.product_id, products1.name
from products1
join order_items1
on products1.product_id=order_items1.product_id
where products1.stock_quantity=0;

#19. List the products that have not been sold in the last 6 months (using Products and Order_Items).


#20. Find customers who have placed orders above a certain value threshold, with order details (using Orders, Customers).
select customers1.customer_id, customers1.first_name, customers1.last_name, orders1.order_id, orders1.total_amount
from customers1
join orders1
on customers1.customer_id=orders1.customer_id
where orders1.total_amount>10000;

#21. Get the total sales amount for each customer, including their personal details (using Orders, Order_Items, and Customers).
select customers1.customer_id, customers1.first_name, customers1.last_name, customers1.email,
sum(order_items1.quantity*order_items1.item_price) as total_sales
from customers1
join orders1
on customers1.customer_id=orders1.customer_id
join order_items1
on orders1.order_id=order_items1.order_id
group by customers1.customer_id, customers1.first_name, customers1.last_name, customers1.email;
