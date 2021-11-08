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

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL,
    name VARCHAR(255), 
    created_at DATETIME DEFAULT NOW(),
    housing_id BIGINT UNSIGNED NOT NULL UNIQUE,
    
    FOREIGN KEY (housing_id) REFERENCES housings(id)
) COMMENT 'фото жилья';

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
	FOREIGN KEY (housing_type_id) REFERENCES housing_types(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id) 
) COMMENT 'описание жилья';


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

DROP TABLE IF EXISTS payments;
CREATE TABLE payments (
	id SERIAL, 
    reservation_id BIGINT UNSIGNED NOT NULL,
    pay BIT,
    FOREIGN KEY (reservation_id) REFERENCES reservation(id)
) COMMENT 'оплата';

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

DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
	id SERIAL,
	name varchar(500),
	housing_id BIGINT UNSIGNED NOT NULL,
    сreated_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    rating TINYINT unsigned,
    user_id BIGINT UNSIGNED NOT NULL,
	
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (housing_id) REFERENCES housings(id)
) COMMENT 'отзывы о жилье';



INSERT INTO 
	housings
VALUES 
	(1,'Milaidhoo Island Maldives',5,'Роскошный курортный бутик-отель Milaidhoo Island Maldives расположен в биосферном заповеднике ЮНЕСКО, рядом с бухтой Ханифару. На территории отеля находится заповедный коралловый риф, который считается одним из лучших мест для сноркелинга и дайвинга.'),
	(2,'Anantara Veli Maldives Resort',5,'Очаровательный курортный отель Anantara Veli, предназначенный только для взрослых гостей, расположен на райском тропическом острове, в окружении белого песка и лазурной воды и идеально подходит для великолепного отдыха в роскошной обстановке. Пары по достоинству оценят бунгало над водой, из которых можно наблюдать за разнообразными морскими обитателями лагуны с кристально-чистой водой. В течение всего дня из международного аэропорта Велана до курортного отеля курсирует скоростной катер, поездка на котором займет всего 35 минут.'),
	(3,'Novotel Bali Nusa Dua',2,'Отель Novotel Bali Nusa Dua со спа-центром и 4 ресторанами расположен в районе Нуса-Дуа, в самом сердце охраняемой территории площадью 350 га, эксклюзивно используемой Комплексом развития туризма в Индонезии. К услугам гостей просторные номера и люксы с гостиной и обеденной зоной, а также кухней.На рассвете гостям отеля Novotel Bali Nusa Dua бесплатно предоставляется трансфер до пляжа Нуса-Дуа. Отель расположен в 30 минутах езды от города Куты и в 15 минутах езды от утесов в заливе Джимбаран.'),
	(4,'Vision Villa Resort',2,'Тихий курортный отель Vision Villa расположен в городе Керамас, в 24 км от города Кута. К услугам гостей ресторан, бар и бесплатный Wi-Fi на всей территории.'),
	(5,'JA Enchanted Island Resort Seychelles',1,'Курортный отель Enchanted Island находится на частном острове Ронд рядом с островом Маэ. К услугам гостей роскошные виллы, утопающие в пышной местной растительности. На территории есть бассейн, спа-центр и фитнес-центр. Гости могут заняться водными видами спорта. В местах общего пользования и на виллах предоставляется бесплатный Wi-Fi.'),
	(6,'Valmer Resort and Spa',1,'Курортный отель Valmer расположен на побережье в городе Бэ-Лазар. К услугам гостей роскошные номера и виллы, детская площадка, библиотека, а также ресторан и бар, где действует бесплатный Wi-Fi. Отель окружен пышным тропическим садом.'),
	(7,'Hennessy Park Hotel',4,'Отель Hennessy Park находится в городе Эбене, также известном как Эбене Киберсити, всего в 12 минутах езды от города Порт Луи, столицы республики Маврикий. К услугам гостей фитнес-центр, оздоровительный центр и круглосуточная доставка еды и напитков в номер.'),
	(8,'Pereybere Hotel & Spa',3,'Спа-отель Pereybere с видом на Индийский океан расположен через дорогу от пляжа с белым песком и пальмами. К услугам гостей открытый бассейн, номера с бесплатным Wi-Fi и ресторан, специализирующийся на морепродуктах.'),
	(9,'The Highline Tulum',1,'Отель Highline Tulum расположен в городе Тулум, в 2,9 км от пляжа Параисо. К услугам гостей открытый бассейн, бесплатная частная парковка, сад и терраса. Среди удобств отеля — услуги консьержа, экскурсионное бюро и бесплатный Wi-Fi на всей территории. Отель располагает семейными номерами.'),
	(10,'Hotel Plaza del Sol',3,'Отель Plaza del Sol с рестораном с обслуживанием по меню находится в городе Эрмосильо. Предоставляется бесплатный Wi-Fi.');

INSERT INTO 
	housing_types
VALUES
	(1,'Вилла','2000-03-06 11:37:13','2002-12-16 03:50:12'),
	(2,'Отель','2018-08-14 12:08:42','2021-02-10 00:28:19'),
	(3,'Апартаменты','2020-05-10 18:43:43','1988-05-24 23:20:12'),
	(4,'Хостел','2009-06-15 12:49:44','1988-11-09 00:01:40');


INSERT INTO
	room_types
VALUES
	(1,'Делюкс','1975-11-24 12:28:05','1981-08-10 12:03:53'),
	(2,'Люкс','2007-04-19 14:36:23','2001-01-01 23:56:57'),
	(3,'Вилла на воде','2021-03-21 14:06:42','2005-11-08 15:10:21');

INSERT INTO 
	users
VALUES
	(1,'Lavina','Konopelski','megane.quitzon@example.org','9ddd4917a54d9deba0008f4ccaaec54eac87911b'),
	(2,'Kraig','Lynch','lindgren.orpha@example.com','ed712736bde68f69231b51dcab18a0872bee2e56'),
	(3,'Constantin','Amore','alfredo.stroman@example.net','1388800b21386b00b032f55062acab294bd19b5c'),
	(4,'Princess','Mosciski','javier.nader@example.com','bb42cee78bd8b1d473ba90026710e7ec1c0c6513'),
	(5,'Keenan','Kirlin','terrell06@example.org','f779b5d458dae1f19f7f7523e6810e809c54a307'),
	(6,'Alaina','Haag','daisy85@example.net','611cddf46814572f8550d997c54208241598c74d'),
	(7,'Damien','Anderson','augustus77@example.net','9087dbc23a361f675ee772270111e604d334958a'),
	(8,'Jillian','Stracke','wiegand.rosetta@example.org','16d40d5618e0852f742455df83e72ac91c7b2ce7'),
	(9,'Tony','Carroll','wkoelpin@example.net','0c6942e9d275e582d8ac2a11fc95e719ed850f8f'),
	(10,'Jeff','Lynch','bartell.germaine@example.net','65f7e3fa9b0677e23e7677e5d24b3f0d64fa0e76');

INSERT INTO 
	photos
VALUES 
	(1,'quia','1971-07-16 08:08:11',1),
	(2,'veritatis','1970-07-05 11:07:54',2),
	(3,'nemo','1975-02-16 19:42:56',3),
	(4,'voluptates','1986-05-11 09:37:06',4),
	(5,'tempore','2003-09-16 10:29:47',5),
	(6,'rerum','1983-02-01 03:12:28',6),
	(7,'amet','2001-10-09 03:38:52',7),
	(8,'quo','1990-09-06 12:10:13',8),
	(9,'illum','2019-03-07 17:48:05',9),
	(10,'voluptas','1985-08-29 09:31:46',10);

INSERT INTO 
	personal_data
VALUES 
	(1,'F','1997-04-27','1998-10-25 03:21:46','Marshall Islands'),
	(2,'M','2011-07-18','2010-05-21 06:17:03','Russian Federation'),
	(3,'M','2017-02-25','2003-12-31 22:50:05','Brunei Darussalam'),
	(4,'M','2018-06-24','2003-07-30 07:43:20','Ukraine'),
	(5,'F','1981-12-06','2005-04-08 06:14:41','Christmas Island'),
	(6,'M','2014-05-11','2009-11-04 20:49:41','Lesotho'),
	(7,'M','1978-12-23','1975-08-07 07:32:10','Costa Rica'),
	(8,'M','2016-12-08','2019-01-09 07:21:33','Bouvet Island (Bouvetoya)'),
	(9,'M','1996-01-11','2000-05-07 06:40:10','Iraq'),
	(10,'F','2017-07-01','2021-08-13 10:48:24','Qatar');

INSERT INTO 
	brands
VALUES 
	(1,'Aston',1),
	(2,'Hilton',2),
	(3,'Paradise',3);

INSERT INTO 
	prices
VALUES 
	(1,1,1,8385),
	(2,2,2,5716),
	(3,3,3,6194),
	(4,4,1,6496),
	(5,5,2,5038),
	(6,6,3,7965),
	(7,7,1,5122),
	(8,8,2,6578),
	(9,9,3,8511),
	(10,10,1,9976);

INSERT INTO 
	services
VALUES 
	(1,'Пляж (первая линия)',1),
	(2,'Wi-Fi',2),
	(3,'Вид на море',3),
	(4,'Трансфер из/в аэропорт ',4),
	(5,'Терраса',5),
	(6,'4 бассейна',6),
	(7,'Ежедневная уборка',7),
	(8,'Вечерняя программа',8),
	(9,'Массаж',9),
	(10,'Доставка продуктов питания ',10),
	(11,'Дайвинг',1),
	(12,'Виндсерфинг',2),
	(13,'Номера для некурящих',3),
	(14,'Сейф для ноутбука',4),
	(15,'Тематический ужин ',5),
	(16,'Принадлежности для барбекю ',6),
	(17,'Вино/шампанское',7),
	(18,'11 ресторанов',8),
	(19,'Туалетная бумага',9),
	(20,'Бар у бассейна',10);
	
INSERT INTO 
	descriptions
VALUES 
	(1,'Portugal','Effertzmouth',1,'1974-12-14 14:47:15','Et omnis ad dolor ipsum. Quis ut quasi et reiciendis quisquam beatae laborum. Exercitationem ad in q',1),
	(2,'Guam','Port Walkerstad',2,'2001-01-21 01:46:16','Rerum repellat enim harum rem. Qui ut impedit distinctio consequuntur placeat inventore beatae. Aspe',2),
	(3,'Austria','North Hardytown',3,'1996-08-19 09:32:24','Aut consequatur ratione quia iure reprehenderit dicta dolor. Vel delectus nostrum dolorem quisquam e',3),
	(4,'Hong Kong','Estellaberg',4,'1994-08-30 17:33:36','Sit saepe aspernatur repudiandae culpa expedita incidunt. Est quia provident possimus odio occaecati',4),
	(5,'Ghana','Langworthville',5,'1980-04-19 09:41:03','Natus dolores culpa autem. Officia omnis culpa velit illo quo. Ut perferendis perspiciatis corporis ',1),
	(6,'Belize','Kassulketon',6,'1998-07-16 05:09:00','Accusantium aliquid non adipisci quo eos aut. Ut possimus tempora aspernatur blanditiis eius ducimus',2),
	(7,'Nigeria','Erickstad',7,'1971-05-12 10:14:22','Aut autem ut numquam omnis et necessitatibus non minima. Sunt quas suscipit velit cumque cupiditate.',3),
	(8,'American Samoa','Jacobiberg',8,'2003-06-05 17:51:31','Eveniet laborum fuga dignissimos dolorum quo quos sit sed. Qui rerum dolorem fuga quia debitis et no',4),
	(9,'Botswana','Lake Mckenna',9,'1973-04-30 07:38:37','Ut distinctio et dolores qui hic. Sint porro cumque fugiat. Et ad aut commodi eum quidem omnis ad.',1),
	(10,'Australia','South Thurman',10,'1985-09-06 01:53:17','Fugit numquam libero est est magni nesciunt dolorum. Iste reiciendis ipsam molestiae sit dolore iste',2);

INSERT INTO 
	terms_placements
VALUES 
	(1,'12:00:00','11:00:00',1,'5218401953264877'),
	(2,'12:00:00','11:00:00',2,'6011378450153560'),
	(3,'13:00:00','11:00:00',3,'4620220408863344'),
	(4,'12:00:00','10:00:00',4,'4980188675326'),
	(5,'12:00:00','11:00:00',5,'5220179056555015'),
	(6,'12:00:00','10:00:00',6,'5234806486941932'),
	(7,'12:00:00','10:00:00',7,'5534109970086763'),
	(8,'12:00:00','10:00:00',8,'4539331267441348'),
	(9,'13:00:00','10:00:00',9,'4916334676034'),
	(10,'12:00:00','11:00:00',10,'343755842672972');

INSERT INTO 
	reservation
VALUES 
	(1,1,1,1,'1988-05-24 22:43:56',1),
	(2,2,2,2,'1979-07-07 12:57:58',2),
	(3,3,3,3,'1979-11-06 16:27:08',3),
	(4,4,4,1,'2002-09-15 14:05:35',4),
	(5,5,5,2,'2016-10-27 03:37:47',5),
	(6,6,6,3,'2000-04-09 05:00:15',6),
	(7,7,7,1,'1987-01-23 22:55:20',7),
	(8,8,8,2,'2017-04-18 19:08:24',8),
	(9,9,9,3,'2004-09-10 13:11:22',9),
	(10,10,10,1,'2005-04-01 23:11:40',10);

INSERT INTO 
	reviews
VALUES 
	(1,'Dreamy location, friendly staff . I will definitely visit again.',1,'2020-05-24 22:43:56','2021-04-20 22:10:00',8,1),
	(2,'Dreamy location, friendly staff . I will definitely visit again.',2,'2021-05-24 22:43:56','2021-05-24 22:43:56',3,2),
	(3,'Dreamy location, friendly staff . I will definitely visit again.',3,'2020-05-24 22:43:56','2020-05-24 22:43:56',7,1),
	(4,'Dreamy location, friendly staff . I will definitely visit again.',4,'2019-05-24 22:43:56','2019-05-24 22:43:56',8,4),
	(5,'Dreamy location, friendly staff . I will definitely visit again.',5,'2018-05-24 22:43:56','2020-05-24 22:43:56',10,8),
	(6,'Dreamy location, friendly staff . I will definitely visit again.',6,'2020-03-24 22:43:56','2020-03-24 22:43:56',9,1),
	(7,'Dreamy location, friendly staff . I will definitely visit again.',7,'2017-05-24 22:43:56','2018-05-24 22:43:56',7,2),
	(8,'Dreamy location, friendly staff . I will definitely visit again.',8,'2020-05-24 22:43:56','2021-05-24 22:43:56',5,9),
	(9,'Dreamy location, friendly staff . I will definitely visit again.',9,'2020-04-20 22:10:00','2021-05-24 22:43:56',1,4),
	(10,'Dreamy location, friendly staff . I will definitely visit again.',10,'2020-05-24 22:43:56','2021-04-20 22:10:00',1,2);


























