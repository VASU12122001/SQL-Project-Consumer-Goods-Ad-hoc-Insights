SELECT 
    MONTHNAME(f.date) AS month,
    YEAR(f.date) AS year,
    CONCAT(ROUND(SUM(sold_quantity * gross_price) / 1000000,
                    2),
            'M') AS gross_sales_amount_Mln
FROM
    fact_gross_price g
        JOIN
    fact_sales_monthly f ON f.product_code = g.product_code
        AND f.fiscal_year = g.fiscal_year
        JOIN
    dim_customer d ON f.customer_code = d.customer_code
WHERE
    d.customer = 'Atliq Exclusive'
GROUP BY month , f.fiscal_year
ORDER BY f.fiscal_year;



