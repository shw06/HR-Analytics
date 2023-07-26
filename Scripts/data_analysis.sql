CREATE DATABASE hr_analytics;

USE hr_analytics;

SHOW TABLES;

SELECT * FROM hr;

set sql_safe_updates = 0;

desc HR;


-- Questions

-- 1. What is the gender breakdown of employees in the company ?

SELECT 
    gender, COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY 
	gender;
    
-- 2. What is the race/ethenicity breakdown of the company ?

SELECT 
    race, COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY race
ORDER BY count DESC;

-- 3. What is the age distribution is the company ?

SELECT 
    CASE
        WHEN age >= 18 AND age <= 25 THEN '18-25'
        WHEN age >= 26 AND age <= 35 THEN '26-35'
        WHEN age >= 36 AND age <= 45 THEN '36-45'
        WHEN age >= 46 AND age <= 55 THEN '46-55'
        WHEN age >= 56 AND age <= 65 THEN '56-65'
        ELSE '65+'
    END AS age_group, 
    COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY age_group
ORDER BY age_group;

-- age distribution with gender
SELECT 
    CASE
        WHEN age >= 18 AND age <= 25 THEN '18-25'
        WHEN age >= 26 AND age <= 35 THEN '26-35'
        WHEN age >= 36 AND age <= 45 THEN '36-45'
        WHEN age >= 46 AND age <= 55 THEN '46-55'
        WHEN age >= 56 AND age <= 65 THEN '56-65'
        ELSE '65+'
    END AS age_group,gender, 
    COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY age_group, gender
ORDER BY age_group, gender;

-- 4. How many employees at headquaters or remote locations ?
SELECT 
    location, COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY location;

-- 5. what is the average length of employement for employees who have terminated ?
SELECT 
    ROUND(AVG(DATEDIFF(termdate, hire_date)) / 365, 0) AS avg_lenght
FROM
    hr
WHERE
    termdate <= CURDATE()
        AND termdate != '0000-00-00'
        AND age >= 18;
        
-- 6. How does gender distribution vary across deparments and job titles ?
SELECT 
    department, gender, COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY department , gender
ORDER BY department;

-- 7. What is the distribution of job titles in the company ?
SELECT 
    jobtitle, COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY jobtitle
ORDER BY jobtitle;

-- 8. Which department has the highest turnover rate ?
SELECT 
    department,
    COUNT(CASE
        WHEN termdate != '0000-00-00' THEN 1
    END) AS employees_left,
    COUNT(*) AS total_employees,
    CONCAT(ROUND(COUNT(CASE
                        WHEN termdate != '0000-00-00' THEN 1
                    END) / COUNT(*) * 100,
                    2),
            '%') AS turnover_rate
FROM
    hr
GROUP BY department
ORDER BY turnover_rate DESC;

-- 9. What is the distribution of across location by city and state ?
SELECT 
    location_state, COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY location_state
ORDER BY count DESC;

SELECT 
    location_city, COUNT(*) AS count
FROM
    hr
WHERE
    age >= 18 AND termdate = '0000-00-00'
GROUP BY location_city
ORDER BY count DESC;

-- 10. How has the company's employee count changed over time by hire and term date ?
SELECT department, concat(round(avg(datediff(termdate, hire_date)/365),0),'yrs') as avg_tenure
FROM hr
WHERE termdate <= curdate() AND termdate != '0000-00-00' AND age >= 18
GROUP BY department
ORDER BY avg_tenure desc;
 
-- 11. Total number of employees
SELECT DISTINCT(COUNT(emp_id)) AS total_employees FROM hr;

-- 12. Average age
SELECT ROUND(AVG(age)) AS average_age FROM hr WHERE termdate != '0000-00-00';

-- 13. Actice employees
 SELECT 
    COUNT(*) AS active_employees
FROM
    hr
WHERE
    termdate IS NULL
        OR termdate = '0000-00-00'
        OR termdate >= CURDATE();