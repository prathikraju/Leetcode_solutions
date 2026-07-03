# Write your MySQL query statement below
SELECT 
    S1.name
FROM 
    (SELECT 
    E1.id, E1.name, COUNT(*) AS NUMBER
FROM
    Employee E1
JOIN
    Employee E2 ON E1.id = E2.managerId 
GROUP BY 
    E1.id, E1.name) AS S1
WHERE 
    S1.NUMBER >= 5;
