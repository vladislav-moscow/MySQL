/* Задача 1
Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, 
который больше всех общался с выбранным пользователем (написал ему сообщений).

*/

-- 
select
    from_user_id,
    concat(u.firstname, ' ', u.lastname) as name,
    count(*) as cnt
	FROM messages m 
	join users u on u.id = m.from_user_id 
	WHERE to_user_id=15
	GROUP BY from_user_id
	ORDER BY count(*) desc limit 1;



/* Задача 2
Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

*/

select  count(*) as sum_likes
	from likes l
	join media m on l.user_id = m.user_id
	join profiles p on p.user_id = m.user_id 
	where year(current_date())- year(birthday) < 10 ;


/* Задача 3
 Определить кто больше поставил лайков (всего): мужчины или женщины.
*/

select 
	count(*) as cnt,
	gender
from likes l 
join profiles p on l.user_id = p.user_id 
group by gender 
limit 1;

















