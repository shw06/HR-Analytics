CREATE DATABASE hr_analytics;

USE hr_analytics;

SHOW TABLES;

SELECT * FROM hr;

set sql_safe_updates = 0;

desc HR;
---------------------------------------------------------------------------------------------------------------------------------------------
-- DATA CLEANING
----------------
-- change the id column name
ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

---------------------------------------------------------------------------------------------------------------------------------------------
-- change the datatype and format of the birthdate column
UPDATE hr
SET birthdate = CASE
    WHEN birthdate LIKE '%/%' THEN STR_TO_DATE(birthdate, '%m/%d/%Y')
    WHEN birthdate LIKE '%-%' THEN STR_TO_DATE(birthdate, '%m-%d-%Y')
    ELSE NULL
    END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

---------------------------------------------------------------------------------------------------------------------------------------------
-- change the datatype and format of the hire_date column
UPDATE hr
SET hire_date = CASE
    WHEN hire_date LIKE '%/%' THEN STR_TO_DATE(hire_date, '%m/%d/%Y')
    WHEN hire_date LIKE '%-%' THEN STR_TO_DATE(hire_date, '%m-%d-%Y')
    ELSE NULL
    END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;
---------------------------------------------------------------------------------------------------------------------------------------------
select termdate from hr;
-- change the datatype and format of the termdate column
UPDATE hr
SET termdate = date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL AND termdate != '';     -- this did not work as expected

UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate != '', date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE true;

SET sql_mode = 'ALLOW_INVALID_DATES';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;
---------------------------------------------------------------------------------------------------------------------------------------------
-- add age column and calculate age based on the birthyear and currentdate
ALTER TABLE hr
ADD age INT;

UPDATE hr 
SET 
    age = TIMESTAMPDIFF(YEAR,
        birthdate,
        CURDATE());

SELECT 
    birthdate, age
FROM
    hr;