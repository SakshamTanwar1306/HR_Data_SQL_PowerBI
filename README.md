# HR_Data_SQL_PowerBI
This project involves cleansing and analyzing 22,000 HR data entries from 2000 to 2020 using MySQL Workbench, followed by creating insightful visualizations in PowerBI. The aim is to derive actionable HR insights, identify trends, and facilitate data-driven HR decision-making.


![Screenshot (34)](https://github.com/SakshamTanwar1306/HR_Data_SQL_PowerBI/assets/144344117/466693fe-4cc1-4e9f-afaa-e1275724e5fc)


**Questions**

- What is the gender breakdown of employees in the company?

- What is the race/ethnicity breakdown of employees in the company?

- What is the age distribution of employees in the company?

- How many employees work at headquarters versus remote locations?

- What is the average length of employment for employees who have been terminated?

- How does the gender distribution vary across departments and job titles?

- What is the distribution of job titles across the company?

- Which department has the highest turnover rate?

- What is the distribution of employees across locations by state?

- How has the company's employee count changed over time based on hire and term dates?

- What is the tenure distribution for each department?

**Summary of Findings**

1. There are more male employees

2. 1 White race is the most dominant while Native Hawaiian and American Indian are the least dominant.

3. The youngest employee is 20 years old and the oldest is 57 years old

4. 5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 25-34 followed by 35-44 while the smallest group was 55-64.

5. A large number of employees work at the headquarters versus remotely.

6. The average length of employment for terminated employees is around 7 years.


7. The gender distribution across departments is fairly balanced but there are generally more male than female employees.

8. The Marketing department has the highest turnover rate followed by Training. The least turn over rate are in the Research and development, Support and Legal departments.

9. A large number of employees come from the state of Ohio.

10. The net change in employees has increased over the years.

11. The average tenure for each department is about 8 years with Legal and Auditing having the highest and Services, Sales and Marketing having the lowest.


**Limitations**

- Some records had negative ages and these were excluded during querying(967 records). Ages used were 18 years and above.

- Some termdates were far into the future and were not included in the analysis(1599 records). The only term dates used were those less than or equal to the current date.


