use bankingdb1 ;

select * from accounts;

-- partition by
select accountid,accounttype,sum(balance) over(partition by accounttype) as total_balance from accounts;

-- order by 
select accountid,accounttype,sum(balance) over(partition by accounttype order by balance) as total_balance from accounts;

select accountid,accounttype,sum(balance) over(order by balance desc) as total_balance from accounts;

-- row number ()
select accountid,balance, row_number() over() from accounts;

select accountid,balance,accounttype, row_number() over(partition by accounttype) from accounts;

select accountid,balance,accounttype, row_number() over(order by accounttype) from accounts;

-- rank() 
select accountid,balance,accounttype, rank() over(order by accounttype) from accounts;

select accountid,balance,accounttype, balance, rank() over(order by accounttype) from accounts;

select accountid,balance,accounttype, balance, rank() over(order by balance) from accounts;

select accountid,balance,accounttype, balance, rank() over(partition by  accounttype order by balance) from accounts;

update accounts set balance=2200 where accountid=104;

select * from accounts ;

select accountid,balance,accounttype, balance, dense_rank() over(order by balance) from accounts;

-- lag () 
select accountid,balance,accounttype, balance, lag(balance) over( order by balance) from accounts;

select accountid,balance,accounttype, balance, lag(balance) over(partition by accounttype order by balance) from accounts;

-- lead ()
select accountid,balance,accounttype, balance, lead(balance) over( order by balance) from accounts;

select accountid,balance,accounttype, balance, lead(balance) over(partition by accounttype order by balance) from accounts;

-- nth values
-- highest
select accountid,balance,nth_value(accountid,2)over(order by balance desc) from accounts;

-- lowesr
select accountid,balance,nth_value(accountid,2)over(order by balance ) from accounts;

-- accounttype wise 3rd highest
select accountid,balance,accounttype, nth_value(accountid,3)over(partition by accounttype order by balance desc) from accounts;

-- ntile 
select accountid,accounttype,balance,ntile(3)over(order by balance)from accounts;

select accountid,accounttype,balance,ntile(5)over(partition by accounttype order by balance) from accounts;