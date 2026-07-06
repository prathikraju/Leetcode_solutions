# Write your MySQL query statement below
SELECT
    product_name, SUM(unit) AS unit
FROM
    Products P
JOIN 
    Orders O ON P.product_id = O.product_id
WHERE 
    O.order_date >= "2020-02-01" AND O.order_date < "2020-03-01"
GROUP BY 
    product_name
HAVING 
    SUM(unit) >= 100;
