SELECT
    A.product_id,
    IFNULL(B.price, 10) AS price
FROM
    (SELECT DISTINCT product_id FROM Products) A
LEFT JOIN
    (
        SELECT P1.product_id, P1.new_price AS price
        FROM Products P1
        LEFT JOIN Products P2
            ON P1.product_id = P2.product_id
            AND P1.change_date < P2.change_date
            AND P2.change_date <= '2019-08-16'
        WHERE P1.change_date <= '2019-08-16'
        AND P2.product_id IS NULL
    ) B
    ON A.product_id = B.product_id;