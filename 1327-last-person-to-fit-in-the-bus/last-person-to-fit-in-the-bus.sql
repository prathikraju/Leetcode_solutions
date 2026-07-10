# Write your MySQL query statement below
SELECT
    S1.person_name
FROM
    (SELECT
    person_id, person_name, weight, turn, SUM(weight) OVER(ORDER BY turn) AS TOTAL_WEIGHT
    FROM 
    Queue
    ORDER BY 
    weight) AS S1
WHERE 
    TOTAL_WEIGHT <= 1000
ORDER BY 
    TURN DESC
LIMIT 1
