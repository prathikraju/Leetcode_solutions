# Write your MySQL query statement below
DELETE
FROM Person
WHERE id NOT IN
(
SELECT ID FROM
(
SELECT
    MIN(id) AS id
FROM
    Person
GROUP BY 
    EMAIL)AS TEMP);
