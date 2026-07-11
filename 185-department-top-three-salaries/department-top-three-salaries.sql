# Write your MySQL query statement below
SELECT
    Department, 
    Employee, 
    Salary
FROM
(SELECT
   D.name AS Department, 
   E.name AS Employee, E.salary AS Salary, 
   DENSE_RANK() OVER(PARTITION BY D.name ORDER BY E.salary DESC) AS NUMBER
FROM 
   Employee E
JOIN 
   Department D ON E.departmentId = D.iD) S1
WHERE 
NUMBER <= 3;