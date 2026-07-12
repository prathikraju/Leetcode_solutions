# Write your MySQL query statement below
SELECT
    id
FROM
    (SELECT
    id, 
    recordDate, 
    temperature, 
    LAG(temperature, 1) OVER(ORDER BY recordDate) AS PREV_TEMP, 
    LAG(recordDate, 1) OVER(ORDER BY recordDate) AS PREV_DATE
FROM
    Weather) S1
WHERE 
    temperature > PREV_TEMP
AND 
    DATEDIFF(recordDate, PREV_DATE) = 1
