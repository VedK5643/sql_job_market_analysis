/*
Question to be answered- What are the top paying data analyst jobs?
-Identifying top 10 highest paying Data Analyst roles that are available remotely.
-Remove NULL salaries
-Also mention the company which is providing the job
*/

SELECT
    job_id,
    job_title,
    salary_year_avg,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim 
ON job_postings_fact.company_id=company_dim.company_id
WHERE 
    job_title_short='Data Analyst'
    AND
    job_location='Anywhere'
    AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;