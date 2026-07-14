# Write your MySQL query statement below

(SELECT
    U.name AS results
FROM
    MovieRating R
JOIN
    Users U ON R.user_id = U.user_id
GROUP BY
    R.user_id
ORDER BY
    COUNT(*) DESC, U.name ASC
LIMIT 1)

UNION ALL

(SELECT
    M.title AS results
FROM
    Movies M
JOIN 
    MovieRating R ON M.movie_id = R.movie_id
WHERE
    R.created_at >= '2020-02-01' AND R.created_at < '2020-03-01'
GROUP BY
    M.title
ORDER BY
    AVG(R.rating) DESC, M.title ASC
LIMIT 1)