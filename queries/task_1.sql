WITH user_krasnodar AS (
    SELECT users.id
    FROM users
    JOIN cities ON users.city_id = cities.id
    WHERE cities.name = 'Krasnodar'
)
SELECT 
    sellers.name,
    SUM(products.price) AS total_sales
FROM transactions
JOIN user_krasnodar ON transactions.user_id = user_krasnodar.id
JOIN products ON transactions.product_id = products.id
JOIN sellers ON products.seller_id = sellers.id
WHERE transactions.status = 'completed'
GROUP BY sellers.name
ORDER BY total_sales ASC
LIMIT 1;
