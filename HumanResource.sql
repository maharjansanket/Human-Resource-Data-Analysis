USE HumanResource;

SELECT * FROM humanresources;

-- 1. What is the gender distribution across different departments?

SELECT Department, Gender, COUNT(*) AS Gender_Count
FROM humanresources
GROUP BY Department, Gender
ORDER BY Department, Gender;

SELECT Gender, COUNT(*) AS Gender_Count
FROM humanresources
GROUP BY Gender
ORDER BY Gender;

-- 2. Which state or city has the highest number of employees?

SELECT State, City, COUNT(*) AS Employee_Count
FROM HumanResources
GROUP BY State, City
ORDER BY Employee_Count DESC
LIMIT 1;

-- 3. What is the average age of employees in each department?

SELECT Department, AVG(TIMESTAMPDIFF(YEAR, Birthdate, CURDATE())) AS Avg_Age
FROM HumanResources
GROUP BY Department;

SELECT Department, AVG(YEAR(CURDATE()) - YEAR(STR_TO_DATE(Birthdate, '%d/%m/%Y'))) as AverageAge
FROM humanresources
GROUP BY Department;

-- 4. What is the most common education level among employees in each department?

SELECT Department, `Education Level`, COUNT(*) AS Count
FROM HumanResources
GROUP BY Department, `Education Level`
ORDER BY Department, Count DESC;

-- 5	How does the education level correlate with job titles and salaries?

SELECT `Education Level`, `Job Title`, AVG(Salary) as AverageSalary
FROM humanresources
GROUP BY `Education Level`, `Job Title`
ORDER BY `Education Level`, `Job Title`;

-- 6. What is the average tenure of employees in the company?

SELECT AVG(DATEDIFF(COALESCE(STR_TO_DATE(Termdate, '%d/%m/%Y'), CURDATE()), STR_TO_DATE(Hiredate, '%d/%m/%Y')))
as AverageTenure
FROM humanresources;

-- 7. What is the turnover rate in each department?
SELECT Department, COUNT(*) as TotalEmployees,
       SUM(CASE WHEN Termdate IS NOT NULL THEN 1 ELSE 0 END) as TerminatedEmployees,
       (SUM(CASE WHEN Termdate IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*)) * 100 as TurnoverRate
FROM humanresources
GROUP BY Department;


-- 8. Are there any trends in hire dates and termination dates over the years?

SELECT YEAR(STR_TO_DATE(Hiredate, '%d/%m/%Y')) as HireYear, COUNT(*) as Hires
FROM humanresources
GROUP BY HireYear
ORDER BY HireYear;

SELECT YEAR(STR_TO_DATE(Termdate, '%d/%m/%Y')) as TermYear, COUNT(*) as Terminations
FROM humanresources
GROUP BY TermYear
ORDER BY TermYear;


-- 9. What is the average salary by job title and department?
SELECT Department, `Job Title`, AVG(Salary) as AverageSalary
FROM humanresources
GROUP BY Department, `Job Title`
ORDER BY Department, `Job Title`;

-- 10. How does salary vary with education level and performance rating?
SELECT `Education Level`, `Performance Rating`, AVG(Salary)
as AverageSalary
FROM humanresources
GROUP BY `Education Level`, `Performance Rating`
ORDER BY `Education Level`, `Performance Rating`;

-- 11.  What is the salary distribution across different states and cities?
SELECT State, City, MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary, AVG(Salary) AS Avg_Salary
FROM HumanResources
GROUP BY State, City
ORDER BY State, City;

-- 12. Is there a correlation between performance ratings and salary?
SELECT `Performance Rating`, AVG(Salary) AS Avg_Salary
FROM HumanResources
GROUP BY `Performance Rating`
ORDER BY Avg_Salary DESC;

-- 13. How does performance rating vary by department and job title?
SELECT Department, `Job Title`, `Performance Rating`, COUNT(*) AS Count
FROM HumanResources
GROUP BY Department, `Job Title`, `Performance Rating`
ORDER BY Department, `Job Title`, `Performance Rating`;

-- 14. What is the distribution of performance ratings among employees?
SELECT `Performance Rating`, COUNT(*) as RatingCount
FROM humanresources
GROUP BY `Performance Rating`;

-- 15. What is the gender diversity across different job titles and departments?
SELECT Department, `Job Title`, Gender, COUNT(*) as GenderCount
FROM humanresources
GROUP BY Department, `Job Title`, Gender
ORDER BY Department, `Job Title`;

-- 16 How does the age distribution vary across different job titles and departments?

SELECT Department, `Job Title`, 
    FLOOR(DATEDIFF(CURDATE(), STR_TO_DATE(Birthdate, '%d/%m/%Y')) / 365) as Age,
    COUNT(*) as Count
FROM humanresources
GROUP BY Department, `Job Title`, Age
ORDER BY Department, `Job Title`, Age;

-- 17  Are there any notable patterns in the hiring of employees from different states or cities?
SELECT State, City, YEAR(STR_TO_DATE(Hiredate, '%d/%m/%Y')) as HireYear, COUNT(*) as Hires
FROM humanresources
GROUP BY State, City, HireYear
ORDER BY HireYear;

-- 18 How has the number of employees in each department changed over the years?

SELECT Department, YEAR(STR_TO_DATE(Hiredate, '%d/%m/%Y')) as HireYear, COUNT(*) as Hires
FROM humanresources
GROUP BY Department, HireYear
ORDER BY Department, HireYear;


-- 19 What are the common career progression paths (e.g., job titles) within the company?
SELECT Employee_ID, GROUP_CONCAT(`Job Title` ORDER BY STR_TO_DATE(Hiredate, '%d/%m/%Y')) as CareerPath
FROM humanresources
GROUP BY Employee_ID;

-- 20 How does education level impact career advancement within the company?
SELECT `Education Level`, `Job Title`, AVG(Salary) as AverageSalary
FROM humanresources
GROUP BY `Education Level`, `Job Title`
ORDER BY `Education Level`;


--  21. What is the salary range within each department?
SELECT Department, MIN(Salary) as MinSalary, MAX(Salary) as MaxSalary, AVG(Salary) as AverageSalary
FROM humanresources
GROUP BY Department;

-- 22. How many employees are approaching retirement age (e.g., 60+ years) in each department?

SELECT Department, COUNT(*) as RetirementCount
FROM humanresources
WHERE FLOOR(DATEDIFF(CURDATE(), STR_TO_DATE(Birthdate, '%d/%m/%Y')) / 365) >= 60
GROUP BY Department;

-- 23. What is the average age of employees by job title and department?

SELECT Department, `Job Title`, AVG(FLOOR(DATEDIFF(CURDATE(), STR_TO_DATE(Birthdate, '%d/%m/%Y')) / 365)) as AverageAge
FROM humanresources
GROUP BY Department, `Job Title`
ORDER BY Department, `Job Title`;

-- 24 24. What is the trend in hiring over the past 5 years?

SELECT YEAR(STR_TO_DATE(Hiredate, '%d/%m/%Y')) as HireYear, COUNT(*) as Hires
FROM humanresources
WHERE YEAR(STR_TO_DATE(Hiredate, '%d/%m/%Y')) >= YEAR(CURDATE()) - 5
GROUP BY HireYear
ORDER BY HireYear;

-- 25. Which months or quarters have the highest hiring rates?

SELECT MONTH(STR_TO_DATE(Hiredate, '%d/%m/%Y')) as HireMonth, COUNT(*) as Hires
FROM humanresources
GROUP BY HireMonth
ORDER BY Hires DESC;

-- OR for quarters:
SELECT QUARTER(STR_TO_DATE(Hiredate, '%d/%m/%Y')) as HireQuarter, COUNT(*) as Hires
FROM humanresources
GROUP BY HireQuarter
ORDER BY Hires DESC;

-- 26. What is the average time to promotion for different job titles?

SELECT `Job Title`, AVG(DATEDIFF(STR_TO_DATE(Termdate, '%d/%m/%Y'), STR_TO_DATE(Hiredate, '%d/%m/%Y'))) as AverageTimeToPromotion
FROM humanresources
WHERE `Job Title` LIKE '%Manager%' -- Assuming promotion leads to managerial positions
GROUP BY `Job Title`;

-- 27. What are the common career paths leading to managerial positions?

SELECT Employee_ID, GROUP_CONCAT(`Job Title` ORDER BY STR_TO_DATE(Hiredate, '%d/%m/%Y')) as CareerPath
FROM humanresources
WHERE `Job Title` LIKE '%Manager%'
GROUP BY Employee_ID;

-- 28 28. Is there a difference in salary and performance for employees who have undergone training versus those who haven't?

SELECT Training, AVG(Salary) as AverageSalary, AVG(`Performance Rating`) as AveragePerformance
FROM humanresources
GROUP BY Training;

-- 30. How does the hire date correlate with the busiest periods in the company’s business cycle?

SELECT b.BusinessPeriod, COUNT(h.Employee_ID) as Hires
FROM humanresources h
JOIN business_cycles b ON h.Hiredate BETWEEN b.StartDate AND b.EndDate
GROUP BY b.BusinessPeriod;

-- 31  Are there any patterns in performance ratings that might indicate employee satisfaction or dissatisfaction?
SELECT `Performance Rating`, COUNT(*) as RatingCount
FROM humanresources
GROUP BY `Performance Rating`
ORDER BY RatingCount DESC;

-- 32 What is the average tenure of employees with high performance ratings compared to those with lower ratings?
SELECT `Performance Rating`, AVG(DATEDIFF(COALESCE(STR_TO_DATE(Termdate, '%d/%m/%Y'), CURDATE()), STR_TO_DATE(Hiredate, '%d/%m/%Y'))) as AverageTenure
FROM humanresources
GROUP BY `Performance Rating`
ORDER BY `Performance Rating`;

-- 33 How does the cost of living in different cities impact salary levels?

SELECT h.City, AVG(h.Salary) as AverageSalary, c.CostOfLivingIndex
FROM humanresources h
JOIN cost_of_living c ON h.City = c.City
GROUP BY h.City, c.CostOfLivingIndex
ORDER BY c.CostOfLivingIndex DESC;

-- 34. What is the impact of remote work policies on performance ratings and employee satisfaction?
SELECT `Remote Work`, AVG(`Performance Rating`) as AveragePerformance, AVG(Salary) as AverageSalary
FROM humanresources
GROUP BY RemoteWork;


-- Average performance rating by department
SELECT Department, AVG(CASE 
    WHEN Performance_Rating = 'Excellent' THEN 5
    WHEN Performance_Rating = 'Good' THEN 4
    WHEN Performance_Rating = 'Satisfactory' THEN 3
    WHEN Performance_Rating = 'Needs Improvement' THEN 2
    ELSE 1
END) AS Avg_Performance_Rating
FROM HumanResources
GROUP BY Department
ORDER BY Avg_Performance_Rating DESC;

-- Salary range in the department with the highest average performance rating
SELECT MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary
FROM HumanResources
WHERE Department = (SELECT Department
                    FROM (SELECT Department, AVG(CASE 
                        WHEN Performance_Rating = 'Excellent' THEN 5
                        WHEN Performance_Rating = 'Good' THEN 4
                        WHEN Performance_Rating = 'Satisfactory' THEN 3
                        WHEN Performance_Rating = 'Needs Improvement' THEN 2
                        ELSE 1
                    END) AS Avg_Performance_Rating
                    FROM HumanResources
                    GROUP BY Department
                    ORDER BY Avg_Performance_Rating DESC
                    LIMIT 1) AS Top_Department);

-- Which departments have the highest and lowest average performance ratings, and what are the salary ranges in these departments?
SELECT MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary
FROM humanresources
WHERE Department = (SELECT Department
                    FROM (SELECT Department, AVG(CASE 
                        WHEN 'Performance Rating' = 'Excellent' THEN 5
                        WHEN 'Performance Rating' = 'Good' THEN 4
                        WHEN 'Performance Rating' = 'Satisfactory' THEN 3
                        WHEN 'Performance Rating' = 'Needs Improvement' THEN 2
                        ELSE 1
                    END) AS Avg_Performance_Rating
                    FROM humanresources
                    GROUP BY Department
                    ORDER BY Avg_Performance_Rating ASC
                    LIMIT 1) AS Bottom_Department);

-- Analyze the correlation between education level and performance rating. Do higher education levels correspond to higher performance ratings?

SELECT `Education Level`, AVG(CASE 
    WHEN `Performance Rating` = 'Excellent' THEN 5
    WHEN `Performance Rating` = 'Good' THEN 4
    WHEN `Performance Rating` = 'Satisfactory' THEN 3
    WHEN `Performance Rating` = 'Needs Improvement' THEN 2
    ELSE 1
END) AS Avg_Performance_Rating
FROM HumanResources
GROUP BY `Education Level`
ORDER BY Avg_Performance_Rating DESC;


-- Identify any gender pay gaps within departments and recommend actions to address disparities.

SELECT Department, Gender, AVG(Salary) AS Avg_Salary
FROM HumanResources
GROUP BY Department, Gender
ORDER BY Department, Avg_Salary DESC;


-- Examine the impact of tenure on salary within each department. Are more tenured employees earning significantly more?

SELECT Department, 
       CASE 
           WHEN DATEDIFF(IFNULL(Termdate, CURDATE()), Hiredate) <= 365 THEN '0-1 Year'
           WHEN DATEDIFF(IFNULL(Termdate, CURDATE()), Hiredate) <= 730 THEN '1-2 Years'
           WHEN DATEDIFF(IFNULL(Termdate, CURDATE()), Hiredate) <= 1095 THEN '2-3 Years'
           ELSE '3+ Years'
       END AS Tenure_Bracket,
       AVG(Salary) AS Avg_Salary
FROM HumanResources
GROUP BY Department, Tenure_Bracket
ORDER BY Department, Tenure_Bracket;


-- Analyze the turnover rate by department and identify departments with the highest turnover. Suggest retention strategies.
SELECT Department, 
       COUNT(*) AS Total_Employees,
       SUM(CASE WHEN Termdate IS NOT NULL THEN 1 ELSE 0 END) AS Turnover_Count,
       (SUM(CASE WHEN Termdate IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS Turnover_Rate
FROM HumanResources
GROUP BY Department
ORDER BY Turnover_Rate DESC;

-- Correlation Between Education Level and Performance Rating

SELECT `Education Level`, AVG(CASE 
    WHEN `Performance Rating` = 'Excellent' THEN 5
    WHEN `Performance Rating` = 'Good' THEN 4
    WHEN `Performance Rating` = 'Satisfactory' THEN 3
    WHEN `Performance Rating` = 'Needs Improvement' THEN 2
    ELSE 1
END) AS Avg_Performance_Rating
FROM HumanResources
GROUP BY `Education Level`
ORDER BY Avg_Performance_Rating DESC;




