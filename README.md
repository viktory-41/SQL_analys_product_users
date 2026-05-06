# SQL-проект: Анализ транзакций

## 📌 Описание
Проект содержит решение трёх задач по анализу базы данных интернет-магазина.

## 📊 Схема базы данных
В базе 5 таблиц:

| Таблица | Описание |
|---------|----------|
| `cities` | Города |
| `sellers` | Продавцы |
| `products` | Товары |
| `users` | Пользователи |
| `transactions` | Транзакции |

**Связи:**
- `users.city_id` → `cities.id`
- `sellers.city_id` → `cities.id`
- `products.seller_id` → `sellers.id`
- `transactions.user_id` → `users.id`
- `transactions.product_id` → `products.id`

## 🎯 Задачи

### Задача 1
Вывести продавца с наименьшей суммой продаж пользователям из **Краснодара** (статус `completed`)

### Задача 2
Вывести имя пользователей из **Воронежа**, которые совершили больше всего покупок в **марте 2021** (статус `completed`)


sqlite3 database.db < queries/task_1.sql
sqlite3 database.db < queries/task_2.sql
