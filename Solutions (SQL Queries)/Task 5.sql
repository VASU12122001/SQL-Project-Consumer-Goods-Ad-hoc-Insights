with manufact_cost as (
SELECT 
    p.product_code, p.product, m.manufacturing_cost
FROM
    dim_product p
        JOIN
    fact_manufacturing_cost m ON p.product_code = m.product_code
)

SELECT 
    product_code, product, manufacturing_cost
FROM
    manufact_cost
WHERE
    manufacturing_cost = (SELECT 
            MAX(manufacturing_cost)
        FROM
            manufact_cost)
        OR manufacturing_cost = (SELECT 
            MIN(manufacturing_cost)
        FROM
            manufact_cost);

