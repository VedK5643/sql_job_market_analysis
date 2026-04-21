/*
Question: Which months in 2023 had the highest Data Analyst job postings?
- Extract month from job_posted_date
- Count postings per month for Data Analyst roles
- Why? Identifies hiring seasons — knowing when companies post the most helps job seekers time their applications for maximum opportunity.
*/

SELECT
    EXTRACT(MONTH FROM job_posted_date) AS posting_month,
    TO_CHAR(job_posted_date, 'Month') AS month_name,
    COUNT(job_id) AS job_postings_count
FROM job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
    AND EXTRACT(YEAR FROM job_posted_date) = 2023
GROUP BY
    posting_month,
    month_name
ORDER BY
    posting_month ASC;

/*
Key Insight:
- January and Q1 typically spike — companies start new hiring budgets
- Summer months may slow down
- Use this to plan when to apply and when to build skills in the off-season
*/
