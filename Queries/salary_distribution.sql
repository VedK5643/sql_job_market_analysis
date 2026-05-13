/*
Question: How does average salary vary by seniority level for remote Data Analyst roles?
- Classify job titles into seniority buckets using CASE WHEN
- Filter for remote roles with non-null salaries
- Group by seniority and compute average salary
- Why? Quantifies the salary jump between junior, mid, and senior roles — useful for setting career progression expectations.
*/

SELECT
    CASE
        WHEN job_title ILIKE '%senior%' OR job_title ILIKE '%sr.%' THEN 'Senior'
        WHEN job_title ILIKE '%junior%' OR job_title ILIKE '%jr.%' OR job_title ILIKE '%entry%' THEN 'Junior'
        WHEN job_title ILIKE '%lead%' OR job_title ILIKE '%manager%' THEN 'Lead / Manager'
        ELSE 'Mid-Level'
    END AS seniority_level,
    COUNT(job_id) AS job_count,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary,
    ROUND(MIN(salary_year_avg), 0) AS min_salary,
    ROUND(MAX(salary_year_avg), 0) AS max_salary
FROM job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
GROUP BY
    seniority_level
ORDER BY
    avg_salary DESC;

/*
Key Insight:
- Senior roles command significantly higher salaries than mid-level ones
- "Lead / Manager" titles may outpay even Senior ICs depending on the company
- Mid-Level is the largest bucket — most postings don't specify seniority explicitly
*/