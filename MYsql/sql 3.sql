-- display accoucts details whose balance > 5000

-- not equal to


-- more than 1 condition
-- logical operator-and or not 
-- balance >20000 and type=savings 
select *
from accounts
where balance >20000 and accounttype ="savings";

select *
from accounts
where balance >20000 or accounttype ="savings";

select *
from accounts
where not accounttype ="savings";

-- between 

select *
from accounts
where balance>=12000 and balance<=25000;

select *
from accounts
where balance between 12000 and 25000;

-- in and not in :- compare multiple values
select * from customers
where customerid=1 or customerid=5;

select * from customers
where customerid in(1,5,10,15,21);

-- accounttype not in saving
select * from accounts
where accountstype not in("savings");


-- is null
select * from 
customers
where email is null;

-- is not null
select * from 
customers
where email is not null;

-- like :- pattern matching
-- starts with a 
select * from
customers
where firstname like "A%" ;

-- ends with a
select * from
customers
where lastname like "%A%" ;
  
-- four character name 
select * from
customers
where lastname like "____" ;

-- names starts with a and length =4
select * from
customers
where firstname like "a___";

-- order by clause
-- sortimg
-- asc or desc 

select * from
accounts order by balance ;

select * from
accounts order by balance asc ;

select * from
accounts order by balance desc ;

-- bottom 3 saving account based on balance 
select * from accounts where accounttype="savings"
 order by balance desc limit 3;
 
 -- retrive records from 6th to 10th
 -- select list_OF_colums from table colums
 
 
 
 -- offset for first row is zero
 select *from accounts limit 5,5;
 
 -- highest *
 select * from accounts order by balance desc limit 0,1;
 
 select * from accounts order by balance desc limit 1,1;
 
 select * from accounts order by balance asc limit 0,2;