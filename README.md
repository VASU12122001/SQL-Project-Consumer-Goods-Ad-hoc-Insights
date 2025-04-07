# SQL-Project-Consumer-Goods-Ad-hoc-Insights

---

## Table of Contents
1. [Project Overview](#Project-Overview)  
2. [Problem Statement](#Problem-Statement)  
3. [Objectives](#Objectives)  
4. [Database and Tables Used](#Database-and-Tables-Used)  
5. [SQL Techniques Applied](#SQL-Techniques-Applied)  
6. [Business Questions and Insights](#Business-Questions-and-Insights)  
7. [Challenges and Learnings](#Challenges-and-Learnings)  
8. [Conclusion and Future Scope](#Conclusion-and-Future-Scope)  
9. [Tools Used](#Tools-Used)
 
---

## Project Overview 
AtliQ Hardware is a fast-growing hardware company aiming to expand across global markets. However, without centralized analytics, business leaders struggled to make data-backed decisions. This SQL-based project analyzes real-world business scenarios using structured queries to uncover insights from AtliQ's internal data.

---

## Problem Statement
AtliQ Hardware is facing intense competition and is struggling to maintain profitability. Their leadership wants to shift from intuition-driven decisions to **data-driven decision-making**. The SQL case study simulates how an analyst would support executives by answering complex business questions. 

---

## Objectives 
- Extract insights using complex SQL queries   
- Answer executive-level business questions using structured queries.  
- Improve understanding of customer, product, and market behavior.
- Practice JOINs, CTEs, aggregations, filtering, and window functions 
- Build a foundation for advanced reporting through SQL-based analysis.
 
---

## Database and Tables Used 
**Database**: `gdb023` (Fictional business database)

**Tables:**  
- `fact_sales_monthly`: Monthly sales data  
- `dim_product`: Product metadata  
- `dim_customer`: Customer details  
- `dim_market`: Market information  
- `fact_gross_price`: Price-related facts  
- `fact_manufacturing_cost`: Cost incurred per product  
- `fact_pre_invoice_deductions`: Pre-invoice discounts and deductions  
- `fact_forecast_monthly`: Forecasted vs. actual sales data  

---

## SQL Techniques Applied
- Writing **complex JOIN queries** across multiple tables  
- Using **GROUP BY**, **HAVING**, **ORDER BY** for aggregations  
- Applying **subqueries** and **CTEs** for layered analysis  
- Performing **data cleaning** using SQL logic  
- Leveraging **window functions** for ranking and time-based analysis  
- Creating **temporary tables** to simplify chained logic  
- Using **CASE WHEN** statements for conditional metrics  

---

## Business Questions and Insights 

| # | Business Question | Insight Summary | Link |
|---|------------|------------|---------------------------------|
| 1 | List of Markets/Countries in which customer "Atliq Exclusive" operates its business in the APAC region. | Australia, Bangladesh, India, Indonesia, Japan, New Zealand, the Philippines, and South Korea are the eight Asia-Pacific nations where Atliq Exclusive operates. Atliq Exclusive sold 3.85 million products in the Asia Pacific area during the fiscal year 2020–2021. Japan had the lowest sales, with only 0.06 million units sold, while India had the most sales, with 1.93 million products sold.| [Task 1](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%201.sql) |
| 2 | What is the percentage of unique product increase in 2021 vs. 2020? | In Fiscal Year 2020, Atliq Hardwares produced 245 unique items; in Fiscal Year 2021, it produced 334 unique products, a 36.33% increase. This increase in distinctive product offerings is a sign of Atliq Hardware's success.| [Task 2](hhttps://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%202.sql) |
| 3 | Provide a report with all the unique product counts for each segment and sort them in descending order of product counts.  | Atliq Hardware has produced products in 6 unique segments: Notebook, Accessories, Peripherals, Desktop, Storage, and Networking.  The Notebook segment has the highest number of unique products, with 129 unique products produced. In contrast, the Networking segment has the lowest number of unique products, with only 9 unique products produced. | [Task 3](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%203.sql) | 
| 4 | Which segment had the most increase in unique products in 2021 vs 2020? | Atliq Hardware added a total of 34 new and unique products to the Accessories Segment in 2021, which is the highest among all 6 segments.  The Accessories Segment is the best-performing segment when compared to all others, indicating a high demand for its items. Although Atliq Hardware added new unique products to all segments, the Networking Segment had the lowest number of increments, with only 3 unique products added. | [Task 4](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%204.sql) |
| 5 | Get the products that have the highest and lowest manufacturing costs. | The "AQ HOME Allin1 Gen 2" had the highest manufacturing  cost of any device made by Atliq Hardware up until fiscal year 2021, at $240.54, while the "AQ Master wired x1 Ms" had the lowest, at $0.89. | [Task 5](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%205.sql) |
| 6 | Generate a report which contains the top 5 customers who received an average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market.  | In descending order, the top 5 Indian market customers who obtained the most average pre-invoice discount percentage in fiscal year 2021 are as follows:  Flipkart: 30.83%, Viveks: 30.38%, Ezone: 30.28%, Croma: 30.25%, Amazon: 29.33%. | [Task 6](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%206.sql) |
| 7 | Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month .  | Atliq Exclusive's overall gross sales price for all of its products was 4.5 million at the start of the fiscal year 2020.  Atliq Exclusive's overall gross sales price for all products was about 0.38 million in the fiscal year 2020, which was their lowest ever.  The worldwide COVID-19 pandemic was most likely the cause of this.  Atliq Exclusive did, however, post their best gross sales price for all products in that fiscal year, which came to $20.46 million.  By the conclusion of fiscal year 2021, Atliq Exclusive had sold 7.18 million worth of products overall. | [Task 7](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%207.sql)|
| 8 | In which quarter of 2020, got the maximum total_sold_quantity? | In the first quarter (Q1) of fiscal year 2020, Atliq Hardware sold the most products (about 7.01 million), while in the third quarter (Q3) of the same fiscal year, it sold the fewest (around 2.08 million). The COVID-19 pandemic, which peaked between March and May 2020, might have contributed to the Q3 sales decrease. | [Task 8](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%208.sql) |
| 9 | Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution?  | The Retailer channel was the most profitable of Atliq Hardware's three revenue-generating channels, accounting for 73.23% of total sales in fiscal year 2021, or over $1219.08 million. The Distributor channel, on the other hand, collected the least amount of money of any channel, making up just 11.3% of total income, or around 188.03 million. | [Task 9](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%209.sql) |
| 10 | Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021? |Atliq Hardware ended fiscal year 2021 with three distinct product divisions. The largest sales quantities for each division in that year were: N & S division: AQ Pen Drive 2 IN 1 Premium, with 0.70 million units sold. P & A division: AQ Gamers Ms Standard 2, with 0.43 million units sold. PC division: AQ Digit Standard Blue, with 0.02 million units sold. | [Task 10](https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%2010.sql) |

---

## Challenges and Learnings

### Challenges
- Handling large datasets with multiple joins  
- Interpreting vague business questions and translating them into SQL logic
  
### Learnings
- Improved proficiency with **advanced SQL joins** and data modeling logic.  
- Learned to break down complex business problems into modular SQL queries.
- Gained strong command of `CTEs` and `Window Functions`  
- Understood how to tie SQL analysis to actual business KPIs  
- Improved data storytelling by framing answers clearly for stakeholders  

---

## Conclusion and Future Scope

### Impact
This SQL project enabled AtliQ Hardware's management to view their operational data in a new light — deriving actionable insights, identifying top performers, and pinpointing areas of improvement with clarity.

### Future Scope 
- Use stored procedures and views for production-level automation.  
- Implement performance tuning using query optimization.  

---

## Tools Used
- **MySQL / SQL Server**: For querying and data manipulation  
- **DB Browser / Workbench**: For executing and testing SQL queries  
- **Power BI**: For Visualization  
