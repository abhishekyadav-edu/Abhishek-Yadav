use bankingdb1;



-- aggregate function 
-- sum,max,count,min,average
-- group by

select * from accounts;

-- accounttype total balance 
select accounttype,sum(balance) as "total balance"
from accounts
group by accounttype;

-- distinct (unique)
select accounttype from accounts;

select distinct accounttype from accounts;

-- how many account type you have 
select count(distinct accounttype ) as number_of_accounttype
from accounts;

-- count total accounts in account table 
select count(accountid) from accounts ;

select count(*) as total_no_of_accounts from accounts ;

-- count total account for each account_type
select accounttype, count(balance) 
from accounts 
group by accounttype ;

-- average total accounts for each account_type
select avg(balance) as number_of_accounttype
from accounts;

-- highest balance in each accounttype 
select max(balance) as number_of_accounttype
from accounts;

-- lowest balance in each accounttype 
select min(balance) as number_of_accounttype
from accounts;

-- for all 
select min(balance) as min_bal,
mAX(balance) as max_bal,
sum(balance) as TOTAL_bal,
AVG(balance) as AVG_bal,
COUNT(balance) as TOTAL_ACCOUNTS
FROM ACCOUNTS;

-- FIND AVERAGE BAL OF SAVING ACCOUNTS BY CUSTOMER 
SELECT CUSTOMERID,AVG(BALANCE)
FROM ACCOUNTS
WHERE ACCOUNTTYPE="SAVINGS"
GROUP BY CUSTOMERID;

-- FIND ACCOUNTS TYPE WHOSE TOTAL BALANCE IS GREATER THAN 100000
SELECT ACCOUNTTYPE,SUM(BALANCE) AS TOTAL_BAL
FROM ACCOUNTS
GROUP BY ACCOUNTTYPE 
HAVING SUM(BALANCE)>100000 ;