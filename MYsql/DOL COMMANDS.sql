create database customer_info;

create table information(cust_id int not null, name varchar(20) not null,country varchar(20) not null,city varchar(20));

desc information;

create table cust_info(cust_id int primary key , cust_name varchar(20)not null, mobile_no bigint unique);

desc cust_info;

show tables;

drop table information;

desc infomation;

show tables;

drop database cust_info;