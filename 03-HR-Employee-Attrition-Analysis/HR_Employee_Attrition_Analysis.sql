USE hr_analytics;

SELECT *
FROM hr_employee_attrition
LIMIT 10;

SELECT COUNT(*) AS total_employees
FROM hr_employee_attrition;

SELECT Attrition,
COUNT(*) AS employee_count,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr_employee_attrition), 2) AS percentage
FROM hr_employee_attrition
GROUP BY Attrition;

SELECT Department,
COUNT(*) AS Total_employees,
SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) AS Attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_rate
FROM hr_employee_attrition
GROUP BY Department
ORDER BY Attrition_rate DESC;

SELECT Overtime,
COUNT(*) AS Total_employees,
SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) AS Attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_rate
FROM hr_employee_attrition
GROUP BY Overtime
ORDER BY Attrition_rate DESC;

SELECT JobRole,
COUNT(*) AS Total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_rate
FROM hr_employee_attrition
GROUP BY JobRole
ORDER BY Attrition_rate DESC;

SELECT JobSatisfaction,
COUNT(*) AS Total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS Attrition_rate
FROM hr_employee_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

SELECT 
CASE WHEN MonthlyIncome < 3000 THEN 'Below 3K'
     WHEN MonthlyIncome < 5000 THEN '3K-5K'
     WHEN MonthlyIncome < 8000 THEN '5K-8K '
     ELSE '8K+'
END AS IncomeBand,
COUNT(*) AS Total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2 ) AS Attrition_rate
FROM hr_employee_attrition
GROUP BY IncomeBand
ORDER BY CASE IncomeBand 
     WHEN 'Below 3K' THEN 1
     WHEN '3K-5K' THEN 2
     WHEN '5K-8K' THEN 3
	 WHEN '8K+' THEN 4
END;

SELECT CASE 
WHEN YearsAtCompany <= 2  THEN '0-2 Years'
WHEN YearsAtCompany <= 5  THEN '3-5 Years'
WHEN YearsAtCompany <= 10  THEN '6-10 Years'
ELSE '11+ Years'
END AS Tenure_band,
COUNT(*) AS Total_employee,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS Attrition_rate
FROM hr_employee_attrition
GROUP BY Tenure_band
ORDER BY CASE Tenure_band
WHEN '0-2 Years' THEN 1
WHEN '3-5 Years' THEN 2
WHEN '6-10 Years' THEN 3
WHEN '11+ Years' THEN 4
END;
 
SELECT BusinessTravel,
COUNT(*) AS Total_employee,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_count,
ROUND(SUM(CASE WHEN Attrition = 'Yes'THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Attrition_rate
FROM hr_employee_attrition
GROUP BY BusinessTravel
ORDER BY Attrition_rate DESC;

     
