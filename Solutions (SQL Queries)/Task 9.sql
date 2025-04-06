WITH gross_sales AS
( 
 SELECT 
    channel,
    ROUND(SUM(gross_price * sold_quantity) ,
            2) AS gross_sales_million
FROM
    fact_sales_monthly AS a
        JOIN
    fact_gross_price AS b ON a.product_code = b.product_code
        AND a.fiscal_year = b.fiscal_year
        JOIN
    dim_customer AS c ON a.customer_code = c.customer_code
WHERE
    a.fiscal_year = 2021
GROUP BY channel
)

SELECT channel,
    gross_sales_million,
	CONCAT(ROUND(gross_sales_million/ SUM(gross_sales_million) OVER()*100,2),'%') AS percentage
FROM gross_sales
 
ORDER BY percentage DESC
;