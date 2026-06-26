# 📊 Data Jobs Market Analysis (SQL)

An analysis of the 2023 data jobs market using PostgreSQL. This project explores top-paying roles, required skills, and hiring trends to help job seekers make smarter career decisions.

---

## 🛠️ Tools Used

- **PostgreSQL** — Database and querying
- **pgAdmin** — Query execution and result visualization
- **Git & GitHub** — Version control

---

## 📁 Project Structure

```text
sql_job_market_analysis/
├── Queries/        ← SQL query files
├── Results/        ← CSV exports of query outputs
├── Assets/         ← Screenshots of query results
└── README.md
```

---

## 🗄️ Database Schema

![Schema Diagram](Assets/schema_diagram.png)

The dataset contains four tables:

- `job_postings_fact`
- `company_dim`
- `skills_dim`
- `skills_job_dim`

---

## 📌 Analysis & Findings

### 1. Top 10 Highest Paying Remote Data Analyst Jobs

**SQL Query:** [`Top_paying_jobs.sql`](Queries/Top_paying_jobs.sql)

[![Top Paying Jobs](Assets/1_Top_paying_jobs.png)](Assets/1_Top_paying_jobs.png)

**Finding:** The highest paying remote Data Analyst role offered **$650,000/year** at Mantys. The top 10 roles range between **$184,000 and $650,000**, with Meta ($336,500), AT&T ($255,829), and SmartAsset appearing multiple times—consistent high-paying employers in this space.

---

### 2. Skills Required for Top Paying Jobs

**SQL Query:** [`Top_paying_job_skills.sql`](Queries/Top_paying_job_skills.sql)

[![Top Paying Job Skills](Assets/2_Top_paying_jobs_skills.png)](Assets/2_Top_paying_jobs_skills.png)

**Finding:** Across the top 10 highest paying roles, **66 skill-job combinations** were found. SQL, Python, and Tableau appeared most frequently. Cloud technologies such as AWS, Azure, and Databricks also appeared consistently, indicating that cloud expertise is expected for many senior, high-paying positions.

---

### 3. Most Optimal Skills to Learn (High Demand + High Pay)

**SQL Query:** [`Most_optimal_skills.sql`](Queries/Most_optimal_skills.sql)

[![Optimal Skills](Assets/3_Most_optimal_skills.png)](Assets/3_Most_optimal_skills.png)

**Finding:** Based on average salary, **Go ($115,320)** and **Snowflake ($112,948)** ranked highest. However, **Python (236 job postings)** and **Tableau (230 job postings)** provide the strongest combination of high demand and competitive salaries (~$100K), making them excellent skills for aspiring data analysts.

---

### 4. Companies With the Most Remote Data Analyst Job Postings

**SQL Query:** [`Company_job_count_salary.sql`](Queries/Company_job_count_salary.sql)

[![Company Job Count](Assets/4_Company_job_count.png)](Assets/4_Company_job_count.png)

**Finding:** **Get It Recruit – Information Technology** posted the largest number of remote Data Analyst openings (131), but the average salary was **$86,962**. In comparison, **Uber** posted only five positions while averaging **$140,900** per role. This highlights that companies with fewer openings can still offer significantly better compensation.

---

### 5. Monthly Hiring Trends in 2023

**SQL Query:** [`Monthly_posting_trend.sql`](Queries/Monthly_posting_trend.sql)

[![Monthly Hiring Trend](Assets/5_Monthly_posting_trend.png)](Assets/5_Monthly_posting_trend.png)

**Finding:** **January recorded the highest hiring activity with 23,697 job postings**, nearly 44% more than most other months. Hiring increased again in **August (18,602 postings)** before dropping to its lowest point in **December (13,560 postings)**. These trends suggest that January and August are the strongest months for job applications.

---

## 🔑 Key Takeaways

- SQL and Python remain the **most essential technical skills** for Data Analyst roles.
- Cloud technologies such as **AWS, Azure, and Snowflake** are strongly associated with higher salaries.
- **January** is the best month to apply for Data Analyst positions based on posting volume.
- Companies with the most openings are **not necessarily the highest-paying employers**.
- **Python and Tableau** provide one of the best combinations of demand, salary, and career opportunities.

---

## 📂 Data Source

Dataset sourced from **Luke Barousse's SQL Course**.
(https://www.youtube.com/@LukeBarousse).
Download the dataset, import it into PostgreSQL, and execute the SQL queries to reproduce the analysis.

---

## 👤 Author

**Vedagya Gupta**

B.Tech Computer Science & Engineering

GitHub: [VedK5643](https://github.com/VedK5643)
