SELECT 
    f.customer_code,
    c.customer,
    CONCAT(ROUND(AVG(pre_invoice_discount_pct) * 100, 2),
            '%') AS average_discount_percentage
FROM
    dim_customer c
        JOIN
    fact_pre_invoice_deductions f ON c.customer_code = f.customer_code
WHERE
    c.market = 'india'
        AND f.fiscal_year = 2021
GROUP BY f.customer_code , c.customer
ORDER BY AVG(pre_invoice_discount_pct) DESC
LIMIT 5;

