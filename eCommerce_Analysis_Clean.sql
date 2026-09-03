

SELECT Country, 
ROUND(SUM(Quantity*UnitPrice), 2) AS Revenue
FROM online_retail
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;

SELECT 
date_format(STR_TO_DATE(InvoiceDate, '%m/%d/%y %H:%i'), '%Y-%m') AS Month,
ROUND(SUM(Quantity*UnitPrice), 2) AS Revenue
FROM online_retail
GROUP BY Month
ORDER BY Month; 

SELECT 
 date_format(str_to_date(InvoiceDate, '%c/%e/%Y %k:%i'),'%Y-%m') AS Month,
 ROUND(SUM(Quantity*UnitPrice), 2) AS Revenue
FROM online_retail
GROUP BY Month
ORDER BY Month;

SELECT StockCode,
Description,
ROUND(SUM(Quantity*UnitPrice), 2) AS Revenue
FROM online_retail
WHERE Quantity > 0
GROUP BY StockCode, Description
ORDER BY Revenue DESC
LIMIT 10;

SELECT StockCode,
Description,
ROUND(SUM(Quantity*UnitPrice), 2) AS Revenue
FROM online_retail
WHERE Quantity > 0 
AND StockCode NOT IN ('DOT', 'POST', 'M')
GROUP BY StockCode, Description
ORDER BY Revenue DESC
LIMIT 10;

SELECT 
count(*) AS ReturnedTransaction,
ROUND(SUM(ABS(Quantity)), 0) AS ReturnedUnits
FROM online_retail
Where Quantity < 0;

SELECT 
CustomerID,
ROUND(SUM(Quantity*UnitPrice))AS Revenue
FROM online_retail
WHERE 
Quantity > 0
AND CustomerID IS NOT NULL 
AND TRIM(CustomerID) <> ''
GROUP BY CustomerID
ORDER BY Revenue desc
LIMIT 10;





