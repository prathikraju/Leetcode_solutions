# Write your MySQL query statement below
SELECT
    S1.id, SUM(S1.num) AS num
FROM
    (SELECT
    requester_id AS id, COUNT(accepter_id) AS num
FROM    
    RequestAccepted 
GROUP BY 
    requester_id
UNION ALL
SELECT
    accepter_id AS id, COUNT(requester_id) AS num
FROM    
    RequestAccepted 
GROUP BY 
    accepter_id) S1
GROUP BY
    S1.id 
ORDER BY 
    num DESC
LIMIT 1


