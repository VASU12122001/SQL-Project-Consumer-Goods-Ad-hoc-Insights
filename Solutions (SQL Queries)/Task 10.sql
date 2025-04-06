WITH ranked_products AS (
    SELECT 
        division, 
        p.product_code, 
        product, 
        SUM(sold_quantity) AS total_sold_quantity,
        RANK() OVER (PARTITION BY division ORDER BY SUM(sold_quantity) DESC) AS rank_order
    FROM 
        fact_sales_monthly f
    JOIN dim_product p 
        ON f.product_code = p.product_code
    WHERE f.fiscal_year = 2021
    GROUP BY division, p.product_code, product
)
SELECT 
    division,
    product_code,
    product,
    total_sold_quantity,
    rank_order
FROM
    ranked_products
WHERE
    rank_order <= 3
ORDER BY division , rank_order;
