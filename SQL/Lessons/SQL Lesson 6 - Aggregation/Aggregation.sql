SUM

--Here's the data we are going to work with
select * from sales.salesorderdetail

--Let's execute a query that returns the sum total of 
--all the amounts in the LineTotal column
select sum(LineTotal) 'LineTotal Sum' from sales.SalesOrderDetail

--Let's use the DISTINCT keyword to determine what
--SpecialOfferID codes have been used
select distinct specialofferid from sales.SalesOrderDetail
order by SpecialOfferID

--Now, let's get the LineTotal sum for a particular 
--SpecialOfferID
select sum(LineTotal) 'LineTotal Sum' 
from sales.SalesOrderDetail
where SpecialOfferID=4


AVG

--Here's the data we are going to work with
select * from sales.salesorderdetail

--Let's execute a query that returns the average of 
--all the amounts in the LineTotal column
select AVG(LineTotal) 'LineTotal Sum' from sales.SalesOrderDetail

--Let's use the DISTINCT keyword to determine what
--SpecialOfferID codes have been used
select distinct specialofferid from sales.SalesOrderDetail
order by SpecialOfferID

--Now, let's get the LineTotal average for a particular 
--SpecialOfferID
select AVG(LineTotal) 'LineTotal Sum' 
from sales.SalesOrderDetail
where SpecialOfferID=4


COUNT

--Here's the data we are going to work with
select * from sales.salesorderdetail

--Let's execute a query that returns the number of 
--amounts in the LineTotal column
select COUNT(LineTotal) 'LineTotal Sum' from sales.SalesOrderDetail

--Let's use the DISTINCT keyword to determine what
--SpecialOfferID codes have been used
select distinct specialofferid from sales.SalesOrderDetail
order by SpecialOfferID

--Now, let's get the number of LineTotal values for a particular 
--SpecialOfferID
select COUNT(LineTotal) 'LineTotal Sum' 
from sales.SalesOrderDetail
where SpecialOfferID=4

--Now let's add some AVG and SUM totals in as well...
select COUNT(LineTotal) 'Count of items', 
AVG(LineTotal) 'Average Values', SUM(LineTotal) 'Sum'
from sales.SalesOrderDetail
where SpecialOfferID=3

MIN and MAX
	--
 
 
GROUP BY

--Let's look at the table we're going to work with
select * from sales.SalesTerritory

-- Take a look at the YTD sales results of each 
-- CountryRegionCode 
select CountryRegionCode, salesytd from sales.SalesTerritory


-- The WHERE clause will limit results to salesytd greater 
-- than 4 million...Note that only 2 US CountryRegionCodes  
-- are returned (3 of them did not have salesytd greater
-- than 4 million
select CountryRegionCode, salesytd from sales.SalesTerritory
where salesytd>4000000

-- Do this WITHOUT the sum first - error!
-- Using the GROUP BY clause rolls the sum(salesytd) numbers
-- into one line total for each CountryRegionCode
select CountryRegionCode, sum(salesytd) 
from sales.SalesTerritory
where salesytd>4000000
GROUP BY CountryRegionCode


HAVING

--Let's see the CountryRegionCodes grouped, but only
--include CountryRegionCodes that have a SalesYTD
--that is greater than 4 million in the group 
select CountryRegionCode, SUM(SalesYTD) 
from Sales.SalesTerritory
where SalesYTD>4000000
GROUP BY CountryRegionCode

--This is the same query as above, except now we are adding
--the HAVING clause (it acts like a WHERE for the GROUP BY)
--It limits the result set to CountryRegionCode groups to 
--those with more than 6 million
select CountryRegionCode, SUM(SalesYTD) 
from Sales.SalesTerritory
where SalesYTD>4000000
GROUP BY CountryRegionCode
HAVING SUM(SalesYTD)>6000000


--Assignment
--Use the HumanResource.Employee table to write queries which
--will answer the following questions.

--1) How many employees are in the company?
--2) How many different jobs exist in the company?
--3) How many single people work for the company?
--4) What is the total number of sick leave hours held by employees?
--5) Which employee has the most vacation hours accrued?
--6) What is the average number of vacation hours accrued for employees in each job?
--7) How many men and how many women work for the company? (ONE query)
--8) Which job titles have average sick leave accrued in excess of 60 hours?
--Bonus) What is the average number of vacation leave held by men and women
--		 for each job title? 
