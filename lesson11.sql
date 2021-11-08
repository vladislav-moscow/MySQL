# Задание 1

Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, 
идентификатор первичного ключа и содержимое поля name.

 
 ######
 
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	tablename varchar(100), 
	tablename_id INT,
    name varchar(100) NULL,
    create_at datetime default now()
) ;

DELIMITER // 

create trigger logs_insert_to_catalogs after insert on catalogs
	for each row between 
		insert into 
			logs (tablename, tablename_id, name) 
		values 
			('catalogs', new.id, new.name);
end //

create trigger logs_insert_to_products after insert on products
	for each row between 
		insert into 
			logs (tablename, tablename_id, name) 
		values 
			('products', new.id, new.name);
end //

DELIMITER ;


