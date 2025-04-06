with unique_products as (

SELECT 
    d.segment AS segment,
    f.fiscal_year,
    COUNT(DISTINCT f.product_code) AS product_count
FROM
    dim_product d
        INNER JOIN
    fact_sales_monthly f ON d.product_code = f.product_code
WHERE
    f.fiscal_year IN (2020 , 2021)
GROUP BY d.segment , f.fiscal_year
)
SELECT 
    segment,
    MAX(CASE
        WHEN fiscal_year = 2020 THEN product_count
    END) AS product_count_2020,
    MAX(CASE
        WHEN fiscal_year = 2021 THEN product_count
    END) AS product_count_2021,
    MAX(CASE
        WHEN fiscal_year = 2021 THEN product_count
    END) - MAX(CASE
        WHEN fiscal_year = 2020 THEN product_count
    END) AS difference
FROM
    unique_products
GROUP BY segment
ORDER BY difference DESC;


