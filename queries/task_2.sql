SELECT 
    u.name,
    COUNT(t.id) AS purchases
FROM transactions t
JOIN users u ON t.user_id = u.id
JOIN cities c ON u.city_id = c.id
WHERE t.status = 'completed'
  AND c.name = 'Voronezh'
  AND t.created_at >= '2021-03-01'
  AND t.created_at < '2021-04-01'
GROUP BY u.name
ORDER BY purchases DESC
LIMIT 1;
