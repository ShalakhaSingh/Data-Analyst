SELECT
CATEGORY,
ROUND(SUM(sales), 2) AS Category_sale
FROM superstore
GROUP BY Category;

SELECT 
Category,
MAX(PROFIT) AS Cat_profit
FROM superstore
GROUP BY Category;

SELECT 
Category,
ROUND(SUM(sales), 2) AS Category_sales
FROM superstore
GROUP BY Category
ORDER BY Category_Sales DESC;

SELECT
category,
ROUND(SUM(Profit), 2) AS Total_profit
FROM superstore
GROUP BY category
ORDER BY Total_profit DESC;

SELECT 
Region,
ROUND(SUM(sales), 2) AS Region_sales 
FROM superstore
GROUP BY Region
ORDER BY Region_sales DESC;

SELECT 
Region,
ROUND(SUM(Profit), 2) AS Region_profit
FROM superstore
GROUP BY Region
ORDER BY Region_profit DESC;

SELECT 
State,
ROUND(SUM(Sales), 2) AS State_sale
FROM superstore
GROUP BY State
ORDER BY State_sale DESC
LIMIT 10;

SELECT
City,
ROUND(SUM(Sales), 2) AS City_sale
FROM superstore
GROUP BY City
ORDER BY City_sale DESC
Limit 10;

SELECT
Segment,
ROUND(SUM(Sales), 2) AS Segment_sale
FROM superstore
GROUP BY Segment
ORDER BY Segment_Sale DESC;

SELECT
`Sub-Category`,
ROUND(SUM(Profit), 2) AS Sbc_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Sbc_Profit DESC;
