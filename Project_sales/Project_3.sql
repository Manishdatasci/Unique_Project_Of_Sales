-- Part-2 SQL Insights 
-- Project 3 

 Create database Project_3;
 use Project_3;
 
 select * from Project_3.shopping_trends LIMIT 0, 1000;
 
 -- Top 10 customers by total spending.
 
SELECT `Customer ID`, SUM(`Purchase Amount (USD)`) AS total_spending
from shopping_trends
GROUP BY `Customer ID` 
ORDER BY total_spending DESC
LIMIT 10;

-- Custoemrs preferred which type of Payment method most

Select `Payment Method`, Count(`Customer ID`) As no_of_customers 
from shopping_trends
group by `Payment Method`
Order by no_of_customers Desc;

-- Total sales by country.

SELECT Location, SUM(`Purchase Amount (USD)`) AS total_sales
from shopping_trends
GROUP BY Location
Order By total_sales DESC;

-- Find the month with the highest sales.

SELECT `Frequency of Purchases`, SUM(`Purchase Amount (USD)`) AS total_sales
from shopping_trends
group by `Frequency of Purchases`
ORDER BY total_sales DESC
LIMIT 1;

-- Average order value per customer.

SELECT 
`Customer ID`, 
ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_order
from shopping_trends 
GROUP BY `Customer ID` 
ORDER BY avg_order DESC;

-- famous color amoung all category 
Select
 Count(`Customer ID`) As number_of_customer,
 Color from shopping_trends
GROUP BY Color
 Order by number_of_customer DESC
 Limit 5;

-- Famous Color in Clothing Category 

Select Color,  Count(`Customer ID`) As number_of_customers
from shopping_trends 
Where Category = 'Clothing'
group by Color
Order by number_of_customers Desc
Limit 5;

-- Top 5 revenue generating Locations

Select Location, SUM(`Purchase Amount (USD)`) As total_revenue 
from shopping_trends
group by Location
Order by total_revenue 
LIMIT 5;

-- Show all rows in which review rating is greater than 4

Select *
from shopping_trends
where `Review Rating` > 4;

-- show how many product are in dataset with category

Select Category, Count(`Item Purchased`) as no_of_Product
from shopping_trends
group by Category 
Order by no_of_Product desc;










