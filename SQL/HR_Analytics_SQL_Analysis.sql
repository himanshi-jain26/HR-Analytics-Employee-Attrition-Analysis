
# 1 Total Employees

SELECT COUNT(*) AS Total_Employees
FROM hr_attrition;

# 2 Total Attrition

SELECT COUNT(*) AS Employees_Left
FROM hr_attrition
WHERE Attrition='Yes';

# 3 Attrition Rate

SELECT
ROUND(
100.0 *
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
/
COUNT(*),
2
) AS Attrition_Rate
FROM hr_attrition;

# 4 Attrition by Department

SELECT
Department,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY Department;

# 5 Attrition Rate by Department

SELECT
Department,
ROUND(
100.0 *
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
/
COUNT(*),
2
) AS Attrition_Rate
FROM hr_attrition
GROUP BY Department
ORDER BY Attrition_Rate DESC;

# 6 Attrition by Job Role

SELECT
JobRole,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY JobRole
ORDER BY Attrition_Count DESC;

# 7 Average Salary by Department

SELECT
Department,
ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM hr_attrition
GROUP BY Department
ORDER BY Avg_Salary DESC;

# 8 Salary by Job Role

SELECT
JobRole,
ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM hr_attrition
GROUP BY JobRole
ORDER BY Avg_Salary DESC;

# 9 Attrition by Overtime

SELECT
OverTime,
COUNT(*) AS Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY OverTime;

# 10 Job Satisfaction Distribution

SELECT
JobSatisfaction,
COUNT(*) AS Employees
FROM hr_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

# 11 Attrition by Job Satisfaction

SELECT
JobSatisfaction,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

# 12 Attrition by Gender

SELECT
Gender,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY Gender;

# 13 Attrition by Marital Status

SELECT
MaritalStatus,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY MaritalStatus;

# 14 Average Years at Company

SELECT
ROUND(AVG(YearsAtCompany),2) AS Avg_Years
FROM hr_attrition;

# 15 Top 5 Highest Paying Job Roles

SELECT
JobRole,
ROUND(AVG(MonthlyIncome),2) AS Avg_Income
FROM hr_attrition
GROUP BY JobRole
ORDER BY Avg_Income DESC
LIMIT 5;

# 16 Work-Life Balance Distribution

SELECT
WorkLifeBalance,
COUNT(*) AS Employees
FROM hr_attrition
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

# 17 Employees by Age Group

SELECT
Age_Group,
COUNT(*) AS Employees
FROM hr_attrition
GROUP BY Age_Group;

# 18 Attrition by Age Group

SELECT
Age_Group,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY Age_Group;

# 19 Average Monthly Income by Age Group

SELECT
Age_Group,
ROUND(AVG(MonthlyIncome),2) AS Avg_Income
FROM hr_attrition
GROUP BY Age_Group;

# 20 Department-wise Salary and Attrition

SELECT
Department,
ROUND(AVG(MonthlyIncome),2) AS Avg_Salary,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_attrition
GROUP BY Department;

