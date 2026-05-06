# SQL_analys_product_users
# Задание по SQL

## Структура БД
![ER-диаграмма](schema.png)

## Задача 1
Вывести топ-3 продавцов по выручке в Москве

**Ответ:**
| name | total_sales |
|------|-------------|
| Seller of happiness | 150000 |
| ... | ... |

## Запуск
\```bash
sqlite3 database.db < queries/task1.sql
\```
