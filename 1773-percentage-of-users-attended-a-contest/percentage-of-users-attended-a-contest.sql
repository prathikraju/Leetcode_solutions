# Write your MySQL query statement below
SELECT
    contest_id, 
    ROUND((COUNT(R.user_id)/ (SELECT COUNT(user_id) FROM Users)) * 100 , 2)AS percentage
FROM
    Users U
JOIN 
    Register R ON U.user_id = R.user_id
GROUP BY
    contest_id
ORDER BY 
    ROUND(COUNT(R.user_id),2) DESC, contest_id;
