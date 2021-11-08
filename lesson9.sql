# Задание 1

 В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
 Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции
 
 ######
 
start transaction;

insert into 
	sample.users 
select * from 
	shop.users 
where 
	id = 1;

delete  from
	shop.users 
where  
	id = 1 
limit 1;

commit;

# Задание 2

Создайте представление, 
которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

######
/*select 
	p.name,
	c.name
from 
	products p
join catalogs c on p.catalog_id = c.id;*/

create view products_catalog as
select 
	p.name as products,
	c.name as catalogs
from 
	products p
join catalogs c on p.catalog_id = c.id;


# Задание 1     Администрирование MySQL

Создайте двух пользователей которые имеют доступ к базе данных shop. 
Первому пользователю shop_read должны быть доступны только запросы на чтение данных,
второму пользователю shop — любые операции в пределах базы данных shop.

######

create  user 'user_shop_read'@'localhost';
grant select, show view on shop.* to 'user_shop_read'@'localhost' Identified by '';

create  user 'user_shop'@'localhost';
grant ALL on shop.* to 'user_shop'@'localhost' Identified by '';

# Задание 1   Хранимые процедуры и функции, триггеры

Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

######

DELIMITER //
create function hello()
returns tinytext not deterministic

begin
	DECLARE hour_now int;
	set hour_now = hour (now());
	case
		when hour_now between 0 and 5 then 
			return "Доброй ночи";
		when hour_now between 6 and 11 then 
			return "Доброе утро";
		when hour_now between 12 and 17 then 
			return "Доброы день";
		when hour_now between 18 and 23 then 
			return "Добрый вечер";
	end case;
end //
DELIMITER ;
# Задание 2

В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
При попытке присвоить полям NULL-значение необходимо отменить операцию.

######
DELIMITER //

create trigger valid_name_description_insert before insert on products
	for each  row begin 
		if  new.name is null  and new.description is null then 
			signal sqlstate '45000'
			set @Message_text = 'Данные в таблице name и description не должны быть null(пустыми)';
		end if;
	end;
	create trigger valid_name_description_insert before update on products
	for each  row begin 
		if  new.name is null  and new.description is null then 
			signal sqlstate '45000'
			set @Message_text = 'Данные в таблице name и description не должны быть null(пустыми)';
		end if;
	end //
DELIMITER ;

