/*
Question: Which companies posted the most remote Data Analyst jobs,
          and what is their average offered salary?

- Join job_postings_fact with company_dim to get company names
- Filter for remote Data Analyst roles with specified salaries
- Group by company and count postings, compute avg salary
- Why? Helps identify which employers are most active in hiring
  remote analysts and how competitive their compensation is.
*/

SELECT
    company_dim.name AS company_name,
    COUNT(job_postings_fact.job_id) AS job_postings_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst'
    AND job_work_from_home = True
    AND salary_year_avg IS NOT NULL
GROUP BY
    company_dim.name
ORDER BY
    job_postings_count DESC,
    avg_salary DESC
LIMIT 15;

/*
Key Insight:
- Companies with the highest posting count don't always offer the highest salaries
- Cross-referencing count + salary reveals which companies are both
  actively hiring AND paying competitively
- Useful for targeting job applications strategically
*/
