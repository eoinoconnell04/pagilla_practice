/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
-- select film_id, title, count(*) as count from inventory join film using(film_id) where title ilike 'H%' group by film_id order by film_id desc; 
select film_id, title, count(film_id) as count from film join inventory using(film_id) where title ilike 'H%' group by film_id order by title desc;

