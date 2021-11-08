/* Задача 1
Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

*/

-- 
UPDATE users
	SET created_at = NOW() AND updated_at = NOW();

/* Задача 2
Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". 
Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

*/
ALTER TABLE users MODIFY COLUMN created_at varchar(200); # преобразуем колонку в VARCHAR
ALTER TABLE users MODIFY COLUMN updated_at varchar(200); # преобразуем колонку в VARCHAR

#Преобразую значения из строки

UPDATE users SET 
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

#Обновляю тип данных колонок с VARCHAR на DATETIME

ALTER TABLE users
	MODIFY COLUMN created_at DATETIME,
	MODIFY COLUMN updated_at DATETIME;



/* Задача 3
 В таблице складских запасов storehouses_products в поле value могут встречаться
 самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
 Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
 Однако, нулевые запасы должны выводиться в конце, после всех записей.
*/
#  создаем таблицу
create table storehouses_products (
	id SERIAL PRIMARY KEY,
    storehouse_id INT unsigned,
    product_id INT unsigned,
    `value` INT unsigned COMMENT 'Запас товарный позиции на складке',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

#наполняем данными

INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES
    (1, 1, 15),
    (1, 3, 0),
    (1, 5, 10),
    (1, 7, 5),
    (1, 8, 0);
#
SELECT value FROM storehouses_products ORDER BY CASE WHEN value = 0 then 1 else 0 end, value;

/* Задача 4
Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')

*/
SELECT * FROM users WHERE birthday_at RLIKE '^[0-9]{4}-(05|08)-[0-9]{2}';



# 							Агрегация данных

/* Задача 1
Подсчитайте средний возраст пользователей в таблице users

*/

SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())), 0) AS AVG_Age FROM users;


/* Задача 2
Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/

select 
	DATE_FORMAT (DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
	COUNT(*) AS total
FROM
	users
GROUP BY
	day
ORDER BY
	total DESC;


/* Задача 3
(по желанию) Подсчитайте произведение чисел в столбце таблицы

*/
CREATE TABLE sum_random (id SERIAL PRIMARY KEY, value INT NULL );

INSERT INTO sum_random (value) VALUES 
(1),
(2), 
(3), 
(4),
(5);

SELECT exp(SUM(ln(value))) summ FROM sum_random;






















