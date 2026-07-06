# Write your MySQL query statement below
/*SELECT 
    product_id, year AS first_year, quantity, price
FROM 
    C
WHERE 
    (product_id, year) IN(
SELECT
    product_id, MIN(year)
FROM 
    Sales
GROUP BY 
    product_id);*/

SELECT 
    S1.product_id, S1.year AS first_year, S1.quantity, S1.price   
FROM 
    Sales S1
JOIN 
    (SELECT
    product_id, MIN(year) AS minimum_year
FROM 
    Sales
GROUP BY 
    product_id) S2 
ON 
    S1.product_id = S2.product_id
AND 
    year = minimum_year
