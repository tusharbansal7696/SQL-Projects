create database HR_Database;
use HR_Database;
create table if not exists countries(
country_id varchar(50) not null,
country_name varchar(50) default null,
region_id decimal(10,5) default null,
primary key(country_id),
key countr_reg_FK(region_id));
show databases;	
show tables;
show table status;
select * from countries;
insert into countries (country_id,country_name,region_id) values ('AR','Argentina','1'),('AU','Australia','2'),
('BE','Belgium','3');
insert  into countries values('GE','Germany','4'),
('EG','Egypt','5'),
('HK','Hongkong',6);
select * from countries;
describe countries;
alter table countries modify region_id decimal(10,2);
create table if not exists departments(
department_id decimal(10,0),
department_name varchar(50) not null,
manager_id decimal(15,0) not null,
location_id decimal(10,0) not null,
primary key(department_id),
key dept_mgr_FK(manager_id),
key department_location_IX(location_id));
describe departments;
select * from departments;
insert into departments values(10,'Administration',200,1700),
(20,'Marketing',201,1800),
(30,'Purchasing',114,1700);
create table if not exists employees(
employee_id decimal(10,0) not null default 0,
first_name varchar(40) default null,
last_name varchar(50) not null,
email varchar(100) not null,
phone_number varchar(40) default null,
hire_date date not null,
job_id varchar(50) not null,
salary decimal(15,2) default null,
commission_pct decimal(10,2) default null,
manager_id decimal(10,0) default null,
department_id decimal(4,0) default null,
primary key (employee_id),
unique key EMP_EMAIL_UK(email),
key emp_department_ix(department_id),
key emp_job_ix(job_id),
key emp_manager_ix(manager_id),
key emp_name_ix(last_name,first_name));
select * from employees;
describe employees;
create table if not exists job_history(
employee_id decimal(6,0) not null,
start_date date not null,
end_date date not null,
job_id varchar(40) not null,
department_id decimal(4,0) default null,
primary key(employee_id,start_date),
key jhist_department_ix(department_id),
key jhist_employee_ix(employee_id),
key jhist_job_ix(job_id)
);
select * from job_history;
 show tables;
 select distinct(department_id) from employees;
 select sum(salary) from employees;
 select max(salary) from employees;
 select count(job_id) from employees;
 select 171*214+625;
 select * from employees order by first_name desc;
 select count(*) from countries;
 select trim(country_name) from countries;
 select length(country_name) from countries;
 select first_name,last_name,length(first_name)+length(last_name) as full_length_characters from employees;
 select * from employees where first_name regexp '[0-9]';
 select * from countries limit10;
 select country_name from countries where length(country_name)=5;
 select country_name from countries where country_name like '_______';
 select country_name from countries where country_name like'___e%';
 select * from countries where country_name in('___e%','_____','%a%');
 select * from countries order by country_name asc;
 select count(*) from countries;
 select substring(country_name,1,3) from countries;
