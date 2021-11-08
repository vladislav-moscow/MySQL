/* Задача 1
Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)
*/
-- наполнение  данными

INSERT INTO users VALUES 
	(1,'Bradford','O\'Connell','rbode@example.net','9ea78878958dfd3db8126e7a1a9e9ed5ba92281b',89656344546),
	(2,'Kip','Mayert','jweber@example.org','3b3774d0daadf77ff273f357c1a8c14bf3608eec',89835006559),
	(3,'Hipolito','Ullrich','alvah73@example.com','dee4766cd30c139f7f91bd86ae047de2c78b82d2',89468296530),
	(4,'Jeromy','Gottlieb','nbeier@example.net','8fb436a3a0cea6be684cd2a5835f1c199f95814c',89689855671),
	(5,'Nicolette','Tremblay','vkuhic@example.com','b3d41d402c22bb3d045f1b2e2400a3461202bcbb',89885194538),
	(6,'Makenna','Larkin','bernhard68@example.org','cb0bebb51f59f416f8bb4383f5b5c0d6ebd679f4',89622894658),
	(7,'Germaine','Heidenreich','rhickle@example.net','3881292a749ff598d2e8216a16aefe67e996e900',89874624822),
	(8,'Elena','Bogan','ward.cortney@example.com','944350e612114c4be92ec85f5c5a4a350fcff8c7',89522039715),
	(9,'Van','Lindgren','vandervort.fae@example.org','9a3de6d997139d3677c3f7e368b0bb10f1ee4385',89650934730),
	(10,'Cathrine','Adams','trisha.lockman@example.org','ffa73ee2a2a33ff99d3c3fd22b99ea197981fbec',89561544671),
	(11,'Janiya','Stanton','bdaugherty@example.com','71aca6bab2c05d2abfed0df59eb3181deb9f8072',89734767066),
	(12,'Edyth','Torp','gpadberg@example.net','f71d4edee86e13d0fee376d16a299e0e44754c0b',89679444547),
	(13,'Jacklyn','Grant','kaia.purdy@example.org','a913bb62bf6a882bf632de7a100e564eaa18f43a',89389229571),
	(14,'Elvie','Moore','rcassin@example.org','01849c2de72f5e3e1fe0a0d761cc843892d50475',89027794564),
	(15,'Levi','Gorczany','goodwin.waylon@example.org','3f1483b199a61aeae6f1f552daafa4f85e786ee3',89020531261);

INSERT INTO communities VALUES 
	(1,'quo',1),
	(2,'aut',2),
	(3,'harum',3),
	(4,'cupiditate',4),
	(5,'sit',5),
	(6,'eaque',6),
	(7,'est',7),
	(8,'eligendi',8),
	(9,'debitis',9),
	(10,'totam',10),
	(11,'vel',11),
	(12,'eaque',12),
	(13,'est',13),
	(14,'est',14),
	(15,'eveniet',15);

INSERT INTO users_communities VALUES 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10),
	(11,11),
	(12,12),
	(13,13),
	(14,14),
	(15,15);

INSERT INTO media_types VALUES 
	(1,'molestiae','1970-06-27 09:52:13','1974-10-17 05:03:06'),
	(2,'illo','2014-05-30 06:20:52','1977-05-21 18:17:08'),
	(3,'quibusdam','1994-12-23 13:36:22','1980-07-16 04:30:06'),
	(4,'aut','1994-11-10 07:06:42','2004-02-24 21:31:44');

INSERT into media VALUES 
	(1,1,1,'Quae ut omnis vitae quia. Dicta in laudantium possimus rerum nemo vitae. Rerum et dicta aut exercitationem distinctio voluptas illo.','adipisci',179,NULL,'1988-08-08 07:27:41','2002-11-07 00:34:56'),
	(2,2,2,'Suscipit qui voluptatem quibusdam cumque placeat voluptatem consequatur molestias. Optio facilis quae placeat dolor dolores sequi. Vitae ipsam voluptas ipsa nihil nesciunt eveniet. Consectetur consequatur consequuntur corrupti cupiditate et.','in',9,NULL,'2009-01-14 00:50:34','1988-06-28 01:06:51'),
	(3,3,3,'Sit veritatis assumenda qui quis aspernatur ut. Tempora in temporibus dolorem expedita iste cumque. Vel consequatur rerum nobis quia et. Consequatur voluptatem suscipit dignissimos eos.','nihil',50,NULL,'1976-08-27 00:12:09','1974-08-09 07:30:05'),
	(4,4,4,'Soluta nemo quasi quod error in. Quia autem id totam. Quidem perferendis quas sunt aliquid commodi autem reprehenderit.','eaque',222368,NULL,'2005-04-06 17:33:27','2000-06-30 07:20:51'),
	(5,1,5,'In quae et officia expedita. Id earum saepe qui aut. Magni sit qui voluptatem et temporibus recusandae rem.','eos',346784,NULL,'1989-12-08 20:42:44','2020-03-23 15:27:03'),
	(6,2,6,'Debitis sit natus ab enim. Omnis et omnis ullam culpa. Pariatur quia rerum in aut voluptas. Libero quos cum fugiat.','esse',5670205,NULL,'2012-05-20 08:28:17','1970-10-01 15:33:29'),
	(7,3,7,'Occaecati voluptatum qui rerum iste ea. Nesciunt dolor eius laborum quis facilis. Ad a reprehenderit vel beatae. Aperiam nihil ipsum consequatur porro.','provident',646856937,NULL,'2001-02-11 14:03:59','1994-06-02 10:17:38'),
	(8,4,8,'Dignissimos incidunt sunt sed et itaque dolor. Est molestias consequatur tempore. Ut rem maiores fuga et corporis optio consequatur. Voluptas aliquid at molestiae dolor adipisci earum sint assumenda.','et',45390,NULL,'2011-02-12 20:50:20','2011-08-06 19:34:12'),
	(9,1,9,'Voluptatem reprehenderit in maxime quas laborum sed quis. Velit deleniti quis aliquam sapiente cupiditate enim.','eveniet',46534870,NULL,'1979-03-07 01:47:47','1994-11-06 10:19:15'),
	(10,2,10,'Excepturi porro laborum molestiae ab enim. Architecto non corrupti doloremque vel quos. Ea ea sint fugit. Reiciendis ab harum eum.','repellat',9364,NULL,'1983-06-15 03:04:29','2015-05-15 14:23:28'),
	(11,3,11,'Ea debitis quia ut perferendis consequatur sint nihil id. Excepturi quia quia ipsa est itaque quasi ratione consequatur.','explicabo',78656930,NULL,'1994-06-15 21:33:42','2014-09-24 22:55:44'),
	(12,4,12,'Voluptatem doloremque explicabo et sint fugit. Et debitis at at laboriosam quo enim. Tenetur id praesentium expedita saepe. Sed et magnam voluptas ab.','aspernatur',8349757,NULL,'2010-10-04 22:20:52','1981-09-06 09:35:12'),
	(13,1,13,'Perspiciatis repellat quibusdam qui vel. Voluptate rem fuga explicabo veritatis consequatur corrupti eum similique. Sint tempora sunt odit cum et voluptas id. Qui quos error dolores expedita ratione magnam sunt.','velit',4,NULL,'1994-01-05 05:18:14','1978-02-25 16:30:43'),
	(14,2,14,'Repellat et ipsam minus nostrum quia fugiat beatae. Molestias ipsam harum voluptate. Sint facere sit quasi et.','dolor',85168469,NULL,'1994-11-28 13:31:39','1996-10-02 14:26:50'),
	(15,3,15,'Quisquam eum quasi laudantium necessitatibus architecto inventore ad. Omnis qui accusantium quia nihil architecto. Non quae inventore earum et. Qui molestiae perspiciatis odio et ut nisi ut.','vitae',840842240,NULL,'1997-01-30 02:47:55','1991-08-18 23:31:32');

INSERT INTO photo_albums VALUES 
	(1,'a',1),
	(2,'et',2),
	(3,'voluptas',3),
	(4,'quo',4),
	(5,'numquam',5);

INSERT INTO photos VALUES 
	(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5),
	(6,1,6),
	(7,2,7),
	(8,3,8),
	(9,4,9),
	(10,5,10),
	(11,1,11),
	(12,2,12),
	(13,3,13),
	(14,4,14),
	(15,5,15);

INSERT INTO profiles VALUES 
	(1,'F','1971-01-27',1,'1971-11-02 06:48:46','New Liliana'),
	(2,'M','2021-02-09',2,'2020-11-07 19:59:21','New Izaiahshire'),
	(3,'M','1992-01-26',3,'1998-01-12 07:16:58','Port Marvin'),
	(4,'M','2005-06-13',4,'2016-03-15 02:59:47','West Wilmer'),
	(5,'F','1980-10-11',5,'2008-02-02 15:24:08','East Buckbury'),
	(6,'F','1976-01-19',6,'1975-12-12 22:14:41','Kingfurt'),
	(7,'M','2020-09-19',7,'1971-05-27 09:57:58','Moenberg'),
	(8,'F','1998-08-16',8,'1986-08-12 08:33:08','Port Adela'),
	(9,'F','1973-09-19',9,'1981-10-30 09:59:10','Julienfurt'),
	(10,'F','2020-12-13',10,'1970-05-10 18:08:15','Adeliaborough'),
	(11,'F','1976-06-10',11,'1983-07-11 13:05:03','South Seth'),
	(12,'M','1981-02-10',12,'1978-05-15 10:32:21','Nickolaston'),
	(13,'F','1997-10-27',13,'2018-02-16 16:02:07','North Winonamouth'),
	(14,'F','2021-02-07',14,'1990-11-20 16:29:10','Lake Verlaborough'),
	(15,'M','1978-03-10',15,'2019-07-25 22:24:44','Cordieland');

INSERT INTO video_albums VALUES 
	(1,'quos',1),
	(2,'impedit',2),
	(3,'itaque',3);

INSERT INTO video VALUES 
	(1,1,1,1,'2001-02-20 01:26:02'),
	(2,2,2,2,'2012-02-05 19:32:09'),
	(3,3,3,3,'1995-04-06 13:02:44'),
	(4,4,4,1,'2010-09-30 18:52:09'),
	(5,5,5,2,'2003-01-30 01:16:35'),
	(6,6,6,3,'2019-05-29 01:40:55'),
	(7,7,7,1,'1992-09-19 03:57:27'),
	(8,8,8,2,'1982-12-08 01:53:11'),
	(9,9,9,3,'2010-07-10 02:07:53'),
	(10,10,10,1,'1982-07-12 02:42:58'),
	(11,11,11,2,'1996-02-28 20:25:50'),
	(12,12,12,3,'1983-03-06 19:58:46'),
	(13,13,13,1,'2009-05-10 14:02:43'),
	(14,14,14,2,'1972-06-16 20:28:23'),
	(15,15,15,3,'2020-12-26 11:52:15'),
	(16,1,1,1,'1970-04-15 19:49:57'),
	(17,2,2,2,'1992-03-25 14:37:04'),
	(18,3,3,3,'1987-01-21 16:55:32'),
	(19,4,4,1,'2016-06-13 04:42:53'),
	(20,5,5,2,'1970-10-21 10:33:30');

INSERT INTO news VALUES 
	(1,1,1,'1980-08-06 03:38:45'),
	(2,2,2,'1980-09-30 20:25:01'),
	(3,3,3,'2016-04-03 09:01:15'),
	(4,4,4,'2011-01-27 01:52:58'),
	(5,5,5,'1973-05-26 18:42:43'),
	(6,6,6,'1975-04-17 04:25:11'),
	(7,7,7,'2009-10-18 14:19:24'),
	(8,8,8,'1980-09-23 12:51:04'),
	(9,9,9,'1974-05-15 10:22:41'),
	(10,10,10,'2016-01-05 22:07:49'),
	(11,11,11,'2006-06-13 15:29:31'),
	(12,12,12,'2007-11-22 20:10:11'),
	(13,13,13,'2014-08-02 05:19:28'),
	(14,14,14,'1991-09-23 16:50:05'),
	(15,15,15,'1984-08-06 01:09:45');

INSERT INTO ads VALUES 
	(1,1,'ut','1993-05-21 12:52:03'),
	(2,2,'doloremque','2009-07-27 10:26:43'),
	(3,3,'excepturi','1996-02-16 09:45:26'),
	(4,4,'quaerat','1997-01-30 18:40:54'),
	(5,5,'sunt','2004-07-23 13:11:37'),
	(6,6,'aliquam','1996-08-25 19:46:18'),
	(7,7,'eaque','1980-02-08 14:06:07'),
	(8,8,'iure','1979-04-11 04:46:11'),
	(9,9,'architecto','2019-02-10 01:12:44'),
	(10,10,'aliquid','2015-06-04 11:28:25');

INSERT INTO clips VALUES 
	(1,1,'dicta','2000-07-17 12:01:10'),
	(2,2,'sed','1990-04-02 00:02:16'),
	(3,3,'reiciendis','1978-07-16 19:03:34'),
	(4,4,'quos','1976-01-06 10:18:56'),
	(5,5,'voluptatem','1970-07-15 08:29:11'),
	(6,6,'accusamus','1983-01-05 05:48:35'),
	(7,7,'explicabo','1977-08-15 06:01:07'),
	(8,8,'nihil','1994-02-18 06:10:48'),
	(9,9,'deleniti','2005-08-28 12:49:24'),
	(10,10,'quidem','2019-05-21 20:02:12'),
	(11,11,'quia','1982-10-12 19:48:33'),
	(12,12,'consequuntur','2020-10-23 08:03:44'),
	(13,13,'numquam','1989-11-05 13:25:09'),
	(14,14,'similique','1988-05-29 14:23:23'),
	(15,15,'ut','1986-12-22 02:24:12');

INSERT INTO likes VALUES 
	(1,1,1,'1989-09-06 20:34:22'),
	(2,2,2,'2017-01-25 10:08:59'),
	(3,3,3,'1980-09-23 00:30:18'),
	(4,4,4,'1988-08-19 02:21:42'),
	(5,5,5,'2017-08-07 04:49:28'),
	(6,6,6,'1988-05-11 18:51:17'),
	(7,7,7,'1998-04-01 11:28:07'),
	(8,8,8,'2009-06-13 07:42:13'),
	(9,9,9,'2000-06-20 11:35:28'),
	(10,10,10,'2019-12-26 18:11:35'),
	(11,11,11,'1978-06-22 04:02:31'),
	(12,12,12,'1995-09-01 08:16:08'),
	(13,13,13,'2001-03-03 15:11:21'),
	(14,14,14,'1972-09-13 01:31:30'),
	(15,15,15,'1977-03-01 06:38:02'),
	(16,1,1,'1999-01-30 17:42:03'),
	(17,2,2,'2015-11-05 22:12:31'),
	(18,3,3,'2015-09-15 15:32:55'),
	(19,4,4,'2016-10-08 21:18:20'),
	(20,5,5,'2012-02-02 20:19:04');

INSERT INTO friend_requests VALUES 
	(1,1,'approved','2000-05-04 08:00:03','2007-02-05 12:56:29'),
	(2,2,'requested','2019-02-02 22:43:19','1990-08-07 05:20:25'),
	(3,3,'unfriended','1983-12-23 13:21:38','1977-05-09 17:14:07'),
	(4,4,'requested','2002-07-18 15:03:32','2016-11-21 09:27:22'),
	(5,5,'unfriended','1998-02-18 00:49:30','1996-09-23 06:43:04'),
	(6,6,'declined','2010-06-05 13:40:43','1991-02-26 10:08:44'),
	(7,7,'declined','1985-06-13 10:21:30','1988-06-20 12:11:10'),
	(8,8,'requested','2002-08-05 21:24:42','2008-08-31 05:43:37'),
	(9,9,'unfriended','1995-03-14 22:56:51','1990-12-27 19:07:09'),
	(10,10,'approved','1982-05-06 23:08:33','1997-05-22 07:01:44'),
	(11,11,'requested','1993-01-21 05:51:41','1972-03-20 23:07:38'),
	(12,12,'unfriended','2002-07-05 09:46:25','2001-08-01 06:01:05'),
	(13,13,'unfriended','1981-04-12 08:27:25','1985-12-21 16:02:45'),
	(14,14,'declined','1972-07-24 19:27:16','1998-06-16 11:10:46'),
	(15,15,'approved','1990-02-23 01:09:45','1986-09-19 00:50:28');

INSERT INTO messages VALUES 
	(1,2,10,'Quibusdam dolores beatae ratione vitae. Sint corrupti architecto ratione occaecati ut. Est odit veniam accusantium reprehenderit provident quo quia. Est atque tenetur sit animi a.','2015-05-13 06:44:48'),
	(2,4,8,'Consequatur fuga delectus nisi molestiae ut aperiam minima. Sed quo accusantium exercitationem quis illo ad sequi. Odit doloribus et consequuntur necessitatibus qui sit. Eligendi fuga voluptate repudiandae et consequatur magni optio voluptatibus.','1976-10-30 20:42:02'),
	(3,2,15,'Ducimus voluptas nihil est. Quia ut pariatur culpa consequatur. Deleniti voluptate molestiae incidunt ipsum suscipit.','1998-02-11 13:17:30'),
	(4,5,15,'Sed voluptates magni commodi. Officia aut voluptatem et voluptas consequatur vel. Labore nulla eos velit sint excepturi fuga.','1990-10-31 10:34:02'),
	(5,3,7,'Omnis in id excepturi nisi hic doloribus. Et quia aut et. Sit sint exercitationem velit harum illo.','1971-06-16 12:15:30'),
	(6,1,15,'Est eius sapiente numquam magni. Ea quisquam qui eos natus animi tenetur sint. Autem perspiciatis iure est ut. Exercitationem et in ut dolores.','2003-08-05 04:28:14'),
	(7,6,15,'Quis sequi eius non voluptatem in eum ut. Et nihil cum possimus ullam optio beatae maiores explicabo. Aperiam et et sit tempora eum architecto quod.','1971-05-18 18:45:17'),
	(8,3,13,'Voluptates mollitia minima ullam sunt. Quia reprehenderit earum laboriosam beatae in iste. Et accusantium numquam incidunt dolore in omnis error.','2011-01-24 08:24:08'),
	(9,7,14,'Qui et ut sunt dolor. Optio veniam adipisci nihil a sunt. Et odit natus molestiae. Dolore voluptatum ducimus repellendus et ab.','2016-03-19 20:19:10'),
	(10,1,15,'Culpa quia enim dolor dignissimos dolores sunt alias. Voluptates sequi laborum nam necessitatibus qui. Voluptatibus sit velit dolorum. Consequatur sapiente et voluptates quia et rerum accusantium rerum. Officiis ex optio odio qui facere in delectus.','2011-09-27 14:57:12'),
	(11,4,12,'Rerum in rerum dignissimos ipsam. Corrupti modi possimus possimus at labore minus.','1996-07-16 17:32:28'),
	(12,4,11,'Doloremque ullam ipsa impedit sapiente natus iure. Est aliquam dicta distinctio culpa et repellendus cum praesentium. Harum rerum nulla est vero ea et aliquid. Et fugit aut qui praesentium.','1983-06-18 09:40:21'),
	(13,2,13,'Est officia veniam accusantium minima optio. Corporis libero nemo fuga consequatur pariatur sed. Eum ut quis dolorem dolores omnis accusantium sint.','1975-09-10 08:32:33'),
	(14,5,9,'Perferendis debitis consequatur asperiores nemo voluptatibus sunt voluptatem. Qui voluptatibus id culpa necessitatibus sint suscipit id excepturi. Expedita commodi in doloribus nesciunt natus. Est soluta delectus atque et.','2019-02-08 05:45:59'),
	(15,1,15,'Porro incidunt dicta consectetur quia sed accusantium molestiae. Ratione aut nemo qui labore rerum quia. Et quia repellat vel voluptate excepturi illo autem. Autem laboriosam autem qui eos eum deserunt.','1998-04-13 17:32:45');


/* Задача 2
Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке
*/

SELECT DISTINCT firstname FROM users; 

/* Задача 3
Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false).
 Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)
*/
# Добавим колонку is_active со значением true (1)

ALTER TABLE profiles ADD COLUMN is_active BOOl DEFAULT true;

# обновляем данный в profiles

UPDATE profiles
SET	is_active = false
WHERE (YEAR(CURRENT_DATE()) - YEAR(birthday)) < 18;

# выбираем несовершеннолетних пользователей

SELECT birthday FROM profiles
WHERE (YEAR(CURRENT_DATE) - YEAR(birthday)) < 18;

/* Задача 4
Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)
*/
DELETE FROM messages
WHERE created_at > CURRENT_TIMESTAMP();

/* Задача 5
 Написать название темы курсового проекта (в комментарии)
*/
# С темой курсового проекта еще не определился, но определюсь в ближайшее время)