create database broadband_database;
use broadband_database;
show databases;
drop database blank;
create table customers(
customer_id int,
first_name varchar (50),
last_name varchar (50),
birth_date date,
join_date date,
city varchar(40),
state varchar(50),
street varchar(40),
main_phone_number varchar(50),
secondary_phone_number varchar(50),
fax varchar(70),
monthly_discount decimal(4,2),
pack_id int);
drop table customers;
insert customers value(1,'Tushar','Bansal','2000-01-29','2021-12-21','Bathinda','Punjab','Birla Mill Colony','+917696335086',
'+916239308433','789456321',22.22,654123);
select * from customers;
insert customers value(2,'Riya','Garg','1999-12-12','2022-01-03','Batala','Punjab','Hanuman Chownk','+917896545123',null,
'963258741',25.52,987563);
create table packages(
pack_id int,
speed varchar(30),
start_date date,
monthly_payment int,
sector_id int);
select * from packages;
insert packages value(1,'100mbps','2021-12-31',999,1);
insert packages value(2,'200mbps','2022-01-01',1499,2);
select * from packages;
create table sectors(
sector_id int,
sector_name varchar(50));
insert sectors values(1,'Private');
insert sectors values(2,'Business');
select * from sectors;
create table pack_grades(
grade_id int,
grade_name varchar(50),
min_price int,
max_price int);
insert pack_grades values(1,'Fast',0,10);
insert pack_grades values(2,'Very Fast',11,20);
select * from pack_grades;
show tables;
/* Query Solving Session */
select count(city) from customers;
select distinct(count(city)) from customers;
select count(state) from customers;
select distinct(count(state)) from customers;
select distinct(count(concat(city,' ',state))) as combo from customers;
select concat(first_name,' ',last_name) as full_name from customers;
select concat(last_name,' ',state) as customer_and_state from customers;
select concat(first_name,' ',last_name,' ',monthly_discount,' ',city,' ',street) as 'FN,LN,DC and FULL_ADDRESS' FROM CUSTOMERS;
select * from customers;
select distinct(count(monthly_discount)) from customers;
select distinct(pack_id) from customers;
select first_name,last_name,city,state,street from customers where last_name='Bansal';
select round(datediff(current_date(),birth_date)/365,0) as age from customers where datediff(current_date(),birth_date)>10*365;
select * from customers where pack_id not in(1122,1461163,153135) and join_date<current_date();
select pack_id, speed, sector_id from packages where speed='100mbps' or '200mbps';
select last_name,monthly_discount from customers where city='Batala';
select first_name,last_name,main_phone_number,secondary_phone_number from customers where secondary_phone_number is null;
select * from customers;