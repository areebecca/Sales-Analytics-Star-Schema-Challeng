## Lab Name: Sales Analytics & Star Schema Challenge
## Project Overview: 
A comprehensive SQL-based analysis project focused on designing a data warehouse and extracting actionable business insights from a multi-dimensional sales dataset.

## Tools Used
Database Engine: PostgreSQL

SQL Dialect: pgSQL

Data Modeling Technique: Star Schema (Dimension & Fact Tables)

## What I Learnt
1. Advanced Query Logic & Order of Operations
I mastered the "logical processing order" of SQL. I learned that the database evaluates clauses in a specific sequence, and that understanding the difference between WHERE (filtering raw data) and HAVING (filtering aggregated groups) is critical for accurate reporting.

2. Pattern Matching & Data Cleaning
I gained proficiency in using wildcards (% and _) for complex text searches. I learned how to handle case sensitivity in PostgreSQL using ILIKE and how to strictly control string length requirements (e.g., using T___ to find exactly 4-character names).

3. Star Schema Management
I practiced the lifecycle of a data warehouse, including:
DDL (Data Definition Language): Dropping and creating tables in the correct order to respect Foreign Key constraints.
DML (Data Manipulation Language): Populating fact tables with thousands of records while maintaining relational integrity.

4. Analytical Problem Solving
I solved various business-centric tasks, such as:
Ranking: Using ORDER BY and LIMIT to identify top-performing products.
Null Handling: Using NULLS LAST to ensure data quality in sorted reports.
Aggregations: Combining GROUP BY with ROUND() and AVG() to summarize category performance.

## Schema Structure
The project follows a Star Schema design to optimize query performance:
Fact Table: fact_sales (The central hub containing transaction metrics).
Dimension Tables: * dim_customer (Demographics and geography)
dim_product (Pricing, brands, and categories)
dim_store (Regional and location data)
dim_date (Time-based analysis)

## Sample Query Insight
One of the key challenges in this lab was identifying brand performance based on specific price thresholds. This required filtering, grouping, and rounding in a single execution:

## Screenshoots to results
<img width="1487" height="403" alt="Screenshot 2026-04-21 175415" src="https://github.com/user-attachments/assets/daa8a504-06e2-45c9-983c-4ee0346c6a84" />
<img width="1504" height="337" alt="Screenshot 2026-04-21 181403" src="https://github.com/user-attachments/assets/6959ba4f-5623-4c83-afb8-67dc820e762e" />
<img width="1501" height="219" alt="Screenshot 2026-04-21 175500" src="https://github.com/user-attachments/assets/522aee65-8266-4700-a68f-7dcae0c5508a" />
<img width="1506" height="333" alt="Screenshot 2026-04-21 175512" src="https://github.com/user-attachments/assets/82e7565f-7df8-4d21-b64c-988c58087add" />
<img width="1503" height="814" alt="Screenshot 2026-04-21 182553" src="https://github.com/user-attachments/assets/acf5824d-8010-4de0-93f7-8b2f5bf4502e" />

