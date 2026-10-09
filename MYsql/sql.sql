
Use sample;

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15) UNIQUE,
    Address VARCHAR(100),
    City VARCHAR(50),
    Account_Type VARCHAR(20) NOT NULL,
    Balance DECIMAL(10,2) DEFAULT 0,
    Status VARCHAR(20) DEFAULT 'Active'
);

desc customer;

insert into customer
(customer_id, customer_name, email, phone, address, city, account_type, balance, status)
value
(101,'rohil sharma', 'rohil@gmail.com', '9784957885', 'mg road', 'mumbai', 'savings',20000 , 'active');


select * from customer;

insert into customer values(102,'munna sharma', 'munna@gmail.com', '9647856655', 'abh road', 'mumbai', 'savings',28000 , 'active');

select * from customer ;

insert into customer values(104,"neha","neha@gmail.com","7876989888"," karve nagar","thane", "saving",60000,"active")
,
(105,"sahil", "sahil@gmail.com", "8804864889", " mg road","thane", "saving", 50000,"active");

select * from customer;

insert into customer values(103,"bhai log","bhai@gmail.com","9675678999"," uui nagar","thane", "saving",47800,"active");



insert into custemor
(customer_id, customer_name, email, phone, address, city, account_type, balance, status)
value
(106,'rakash sharma','dht road','mumbai','savings',50000,'active');


-- delete cust_id=1
delete from customer where customer_id=101;

-- updatw
update custemor set city="thane", address="mg road"
where customer_id="102";

-- truncate ;- detele all records from table
truncate table customer;

-- drop :-detele all records witj structure form database
drop table customer;

select * from customer;
desc

select * from customer
