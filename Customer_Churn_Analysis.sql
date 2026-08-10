USE customer_churn_db;
SELECT *
FROM telco
LIMIT 5;

DESC telco;

SELECT COUNT(*) AS Total_Customer
FROM telco;

SELECT `Customer Status`,
COUNT(*) AS Total_Customers
FROM telco
GROUP BY `Customer Status`;

SELECT COUNT(*) AS Total_Customer
From telco;

SELECT `Customer Status`,
COUNT(*) AS Total_Customer
From Telco
GROUP BY `Customer Status`; 

SELECT `Churn Label`,
COUNT(*) AS Customers
FROM telco
GROUP BY `Churn Label`;

SELECT Contract,
COUNT(*) AS Total_Customer
From telco
GROUP BY Contract
ORDER BY Total_Customer DESC;

SELECT `Payment Method`,
COUNT(*) AS Total_Customers
FROM telco
GROUP BY `Payment Method`
ORDER BY Total_Customers DESC;

SELECT `Internet Service`,
COUNT(*) AS Highest_Customers
FROM telco
GROUP BY `Internet Service`
ORDER BY Highest_Customers DESC;

SELECT `Internet Type`,
COUNT(*) AS `Total_Customer`
FROM telco
GROUP BY `Internet Type`
ORDER BY Total_Customer; 

SELECT Age,
COUNT(*) AS Total_Customers
FROM telco
GROUP BY Age
ORDER BY Age Desc;

SELECT `Senior Citizen`,
COUNT(*) AS Total_customer
FROM telco
GROUP BY `Senior Citizen`;

SELECT 'Married',
COUNT(*) AS Total_customer
FROM telco
GROUP BY `Married`;

SELECT `Gender`,
COUNT(*) AS Total_customer
FROM telco
GROUP BY `Gender`;

SELECT `Offer`,
COUNT(*) AS Customer_preference
FROM telco
GROUP BY `Offer`
ORDER BY Customer_preference DESC;

SELECT `Payment Method`,
ROUND(SUM(`Total Revenue`),2) AS Revenue
FROM telco
GROUP BY `Payment Method`
ORDER BY Revenue DESC;



SELECT Contract,
COUNT(*) AS `Churn Customer`
FROM telco
WHERE `Churn Label`= 'YES'
GROUP BY Contract
ORDER BY `Churn Customer` DESC;

SELECT `Internet Type`,
COUNT(*) AS `Churn Customer`
FROM telco
WHERE `Churn Label` = 'Yes'
GROUP BY `Internet Type`
ORDER BY `Churn Customer` DESC;

SELECT `Payment Method`,
COUNT(*) AS `Churn Customer`
FROM telco
WHERE `Churn Label` = 'Yes'
GROUP BY `Payment Method`
ORDER BY `Churn Customer` DESC;

SELECT Offer,
COUNT(*) AS `Churn Customer`
FROM telco
WHERE `Churn Label` = 'Yes'
GROUP BY Offer
ORDER BY `Churn Customer` DESC;

SELECT Contract,
COUNT(*) AS `Total Customer`,
SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) AS `Churn Customer`,
ROUND(SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS `Churn Rate`
FROM telco
GROUP BY Contract
ORDER BY `Churn Rate`DESC;

SELECT `Internet Type`,
COUNT(*) AS `Total Customer`,
SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) AS `Churn Customer`,
ROUND(SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) * 100/ COUNT(*), 2) AS `Churn Rate`
FROM telco
GROUP BY `Internet Type`
ORDER BY `Churn Rate`;

SELECT `Senior Citizen`,
COUNT(*) AS `Total Customer`,
SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) AS `Churn Customer`,
ROUND(SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS `Churn Rate`
FROM telco
GROUP BY `Senior Citizen`;

SELECT `Churn Reason`,
COUNT(*) AS Customer
FROM telco
WHERE `Churn Label` = 'Yes'
GROUP BY `Churn Reason`
ORDER BY `Customer` DESC
LIMIT 10;

SELECT Contract,
ROUND(SUM(`Total Revenue`),2) AS Total_revenue
FROM telco
GROUP BY Contract
ORDER BY Total_revenue DESC;

SELECT `Internet Type`,
ROUND(SUM(`Total Revenue`),2) AS Total_Revenue
FROM telco
GROUP BY `Internet Type`
ORDER BY Total_Revenue DESC;

SELECT State,
ROUND(SUM(`Total Revenue`),2) AS Total_revenue
FROM telco
GROUP BY State
ORDER BY Total_revenue DESC;

SELECT City,
ROUND(SUM(`Total Revenue`),2) AS Total_revenue
FROM telco
GROUP BY City 
ORDER BY Total_revenue DESC
LIMIT 10;

SELECT `Customer ID`,
ROUND(`Total Revenue`,2) AS Total_revenue
FROM telco
ORDER BY Total_revenue DESC
LIMIT 10;

SELECT Contract,
ROUND(AVG(`Monthly Charge`),2) AS Avg_monthly_charge
FROM telco
GROUP BY Contract
ORDER BY Avg_monthly_charge DESC;

SELECT `Customer Status`,
ROUND(AVG(CLTV),2) AS Avg_CLTV
FROM telco
GROUP BY `Customer Status`
ORDER BY Avg_CLTV DESC;

SELECT `Churn Category`,
ROUND(SUM(`Total Revenue`),2) AS Revenue_Lost
FROM telco
WHERE `Churn Label`='Yes'
GROUP BY `Churn Category`
ORDER BY Revenue_Lost DESC;

SELECT `Payment Method`,
COUNT(*) AS Total_Customers,
SUM(CASE WHEN `Churn Label`='Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
ROUND(SUM(CASE WHEN `Churn Label`='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Churn_Rate
FROM telco
GROUP BY `Payment Method`
ORDER BY Churn_Rate DESC;
