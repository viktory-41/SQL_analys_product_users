WITH user_krasnodar AS (
    SELECT users.id
    FROM users
    JOIN cities ON users.city_id = cities.id
    WHERE cities.name = 'Krasnodar'
)
SELECT 
    sellers.name,
    SUM(products.price) AS total_sales
FROM transactions1
JOIN user_krasnodar ON transactions1.user_id = user_krasnodar.id
JOIN products ON transactions1.product_id = products.id
JOIN sellers ON products.seller_id = sellers.id
WHERE transactions1.status = 'completed'
GROUP BY sellers.name
ORDER BY total_sales ASC
LIMIT 1;
