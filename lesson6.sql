/* Задача 1
Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, 
который больше всех общался с выбранным пользователем (написал ему сообщений).

*/

-- 
select COUNT(*) as send,
    from_user_id
	FROM messages 
	WHERE to_user_id=15
	GROUP BY from_user_id
	ORDER BY send desc limit 1;

/* Задача 2
Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

*/

select  count(*) as 'sum_likes'
	from profiles 
	where (year(now())-year(birthday)) < 10;


/* Задача 3
 Определить кто больше поставил лайков (всего): мужчины или женщины.
*/

select 
	count(*) as cnt,
	gender
	from profiles
	group by gender
	limit 1;

select 
	count(*) as cnt,
	gender
from likes as l 
join profiles as p on l.user_id = p.user_id 
group by gender 
limit 1;

















