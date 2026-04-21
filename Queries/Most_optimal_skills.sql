/*
Question to answer- What are the most optimal skills to learn? i.e. high demand and high paying for Data Analyst Roles
- Identifying skills in high demand associated with high average salaries
- concentrate on remote positions
- Why?: To target skills that offer job security and financial benifits
*/


SELECT 
    skills,
    COUNT(job_postings_fact.job_id) AS demand,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim
ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim
ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE 
    job_location='Anywhere'
    AND
    job_title_short='Data Analyst'
    AND 
    salary_year_avg IS NOT NULL
GROUP BY
    skills_dim.skill_id
HAVING 
    COUNt(job_postings_fact.job_id)>10
ORDER BY
    avg_salary DESC,
    demand DESC
LIMIT 25;