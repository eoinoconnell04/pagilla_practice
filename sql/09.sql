/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

select first_name, last_name, sum(amount) from staff join payment using (staff_id) where payment_date::text like '2020-01%' group by staff_id order by sum;
