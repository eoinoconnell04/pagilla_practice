/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
select title, sum(amount) as profit from payment join rental using(rental_id) join inventory using(inventory_id) join film using(film_id) group by title order by profit desc; 
