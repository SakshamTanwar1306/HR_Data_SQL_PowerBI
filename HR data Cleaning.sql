create database projects;


-- then imported table table 



use projects;
select * from hr;

-- ALTER TABLE: Use ALTER TABLE when you need to make structural changes to a database table. This includes adding or dropping columns, changing column data types, renaming columns, and modifying constraints like primary keys and indexes. 
-- ALTER TABLE is primarily used for changing the structure or schema of a table.

-- changing name of a column
Alter table hr
change column ï»¿id emp_id varchar (20) NULL;




describe hr
select birthdate from hr;


set sql_safe_updates = 0;



-- UPDATE: Use UPDATE when you want to modify the data within the rows of a table. It allows you to change the values of existing records based on a specified condition or criteria.
-- UPDATE is used to manipulate the data within the table, not its structure.



update hr
set birthdate = CASE
	when birthdate like '%/%' then date_format (str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    when birthdate like '%-%' then date_format (str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    else null
end;


alter table hr
modify column birthdate date;



update hr
set hire_date = CASE
	when hire_date like '%/%' then date_format (str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
    when hire_date like '%-%' then date_format (str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
    else null
end;



select hire_date from hr;




alter table hr 
modify column hire_date  Date


select termdate from hr;



update hr
set termdate = date(str_to_date(termdate, '%Y-%m-%d %H:%i:%sUTC'))
where termdate is not null and termdate !='' ;



UPDATE hr
SET termdate = '0000-00-00'
WHERE termdate IS NULL OR termdate = '';



SET sql_mode = 'ALLOW_INVALID_DATES';

alter table hr
modify column termdate date;

alter table hr add column age int;

update hr 
set age = timestampdiff(Year, birthdate, curdate());

select birthdate, age from hr;


select age from hr 
where age = -46;
select 
	min(age) as youngest,
    max(age) as oldest
from hr;


select count(*) from hr where age>=21;