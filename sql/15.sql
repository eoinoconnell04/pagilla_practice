/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select category.name as name, count(*) as sum from film join language using(language_id) join film_category using(film_id) join category using(category_id) where language.name='English' group by category.name order by category.name;

