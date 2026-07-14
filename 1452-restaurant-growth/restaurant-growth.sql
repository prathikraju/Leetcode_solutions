# Write your MySQL query statement below
SELECT
    S1.visited_on, 
    ROUND(SUM(S1.amount)OVER(ORDER BY S1.visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS amount,
    ROUND(AVG(S1.amount)OVER(ORDER BY S1.visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) ,2)AS average_amount
FROM
    (SELECT
        visited_on,
        SUM(amount) AS amount
    FROM
        Customer
    GROUP BY
        visited_on) S1
ORDER BY 
    visited_on
LIMIT 1000000
OFFSET 6;
    
