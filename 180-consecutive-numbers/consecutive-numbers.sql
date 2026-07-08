# Write your MySQL query statement below
SELECT
   DISTINCT L1.num AS ConsecutiveNums
FROM
    Logs L1
JOIN 
    Logs L2 ON L1.id = L2.id - 1
AND L1.NUM = L2.NUM
JOIN
    Logs L3 ON L1.id = L3.id - 2
AND L1.NUM = L3.NUM