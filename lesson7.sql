DROP DATABASE IF EXISTS booking;
CREATE DATABASE booking;
USE booking;

DROP TABLE IF EXISTS housings;
CREATE TABLE housings (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(150),
    number_stars TINYINT unsigned,
    short_description TEXT
    
) COMMENT 'жилье';

DROP TABLE IF EXISTS housing_types;
CREATE TABLE housing_types (
	id SERIAL,
    name VARCHAR(255), 
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'тип жилья';

DROP TABLE IF EXISTS descriptions;
CREATE TABLE descriptions (
	housing_id BIGINT UNSIGNED NOT NULL UNIQUE,
    country VARCHAR(100),
    city VARCHAR(100),
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    detailed_description VARCHAR(100),
    housing_type_id BIGINT unsigned,
    
    FOREIGN KEY (housing_id) REFERENCES housings(id),
	FOREIGN KEY (housing_type_id) REFERENCES housing_types(id)
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- пока рано, т.к. таблицы media еще нет
) COMMENT 'описание жилья';


DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
	id SERIAL,
	housing_id BIGINT UNSIGNED NOT NULL UNIQUE,
    сreated_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    rating TINYINT unsigned,
	
    FOREIGN KEY (housing_id) REFERENCES housings(id)
) COMMENT 'отзывы о жилье';

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL, 
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(120) UNIQUE,
 	password_hash VARCHAR(100)
	
) COMMENT 'пользователи';

DROP TABLE IF EXISTS personal_data;
CREATE TABLE personal_data (
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
    gender CHAR(1),
    birthday DATE,
	created_at DATETIME DEFAULT NOW(),
    citizenship VARCHAR(100),
	
    FOREIGN KEY (user_id) REFERENCES users(id)
) COMMENT 'профиль пользователя';

DROP TABLE IF EXISTS room_types;
CREATE TABLE room_types (
	id SERIAL,
    name VARCHAR(255), 
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
	
) COMMENT 'тип номера';

DROP TABLE IF EXISTS prices;
CREATE TABLE prices (
	id SERIAL,
    housing_id BIGINT UNSIGNED NOT NULL,
    room_types_id BIGINT UNSIGNED NOT NULL,
	price BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (housing_id) REFERENCES housings(id),
    FOREIGN KEY (room_types_id) REFERENCES room_types(id)
) COMMENT 'цены';

DROP TABLE IF EXISTS reservation;
CREATE TABLE reservation (
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
    housing_id BIGINT UNSIGNED NOT NULL,
    room_types_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	price_id BIGINT UNSIGNED NOT NULL,
    
	FOREIGN KEY (price_id) REFERENCES prices(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (housing_id) REFERENCES housings(id),
    FOREIGN KEY (room_types_id) REFERENCES room_types(id)
) COMMENT 'бронирования';

DROP TABLE IF EXISTS brands;
CREATE TABLE brands (
	id SERIAL, 
    name VARCHAR(150),
    housing_id BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (housing_id) REFERENCES housings(id)
) COMMENT 'бренд';

DROP TABLE IF EXISTS services;
CREATE TABLE services (
	id SERIAL, 
    name VARCHAR(150),
    housing_id BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (housing_id) REFERENCES housings(id)
) COMMENT 'услуги';

DROP TABLE IF EXISTS terms_placements;
CREATE TABLE terms_placements (
	id SERIAL, 
    check_in_time TIME, # КАКОЙ ТИП ТУТ ЛУЧШЕ БУДЕТ????
    departure_time TIME,
    housing_id BIGINT UNSIGNED NOT NULL,
    cards VARCHAR(100),
    
    FOREIGN KEY (housing_id) REFERENCES housings(id)
) COMMENT 'условия размещения';














