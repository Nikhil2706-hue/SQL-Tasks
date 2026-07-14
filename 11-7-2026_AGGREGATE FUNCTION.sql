use pratice;
show tables;
select *from orders;
select sum(price)/count(price) from orders;

select avg(price) from orders;

select count(price) from orders;

select *from orders;

create table t1(
id int primary key,
name varchar(50),
branch varchar(10),
phone bigint
);

create table t2(
id int,
age int,
grade char(1),
foreign key (id) references t1(id)
);
desc t1;
desc t2;

insert into t1 values(1, 'sairam', 'cse', 9346976500);
insert into t2 values(1, 22, 'S');

insert into t1 values(2,'nikhil','cse',65439875438),(3,'ram','eee',854786947685);
insert into t2 values(2,20,'B'),(3,21,'D');
select * from t1;
select * from t2;

create table t3 (
id int,
fee_amount decimal(10,2),
status varchar(10),
foreign key (id) references t1(id)
);

insert into t3 values(1, 1000.00,'Pending'),(2,0.00,'Clear'),(3, 2500,'Pending');

select * from t3;












