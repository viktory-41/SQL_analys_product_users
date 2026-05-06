WITH user_voronezh AS (
    SELECT users.id, users.name
    FROM users
    JOIN cities ON users.city_id = cities.id
    WHERE cities.name = 'Voronezh'
)

SELECT 
    user_voronezh.name AS name,
    COUNT(*) AS purchases
FROM transactions
JOIN user_voronezh ON transactions.user_id = user_voronezh.id
WHERE transactions.status = 'completed'
  AND strftime('%Y', transactions.created_at) = '2021'
  AND strftime('%m', transactions.created_at) = '03'
GROUP BY user_voronezh.name
ORDER BY purchases DESC
LIMIT 1;
