--1. How many actors are there with the last name ‘Wahlberg’?
-- NO DATA
SELECT first_name, last_name 
FROM actor
WHERE last_name LIKE 'wahlberg';

--2. How many payments were made between $3.99 and $5.99?
-- 2 payments between $3.99 and $5.99
SELECT customer_id, amount 
FROM payment 
WHERE amount > 3.99 AND amount < 5.99 
ORDER BY amount ASC;


--3. What film does the store have the most of? (search in inventory)
-- 1000
SELECT MAX(film_id) title
FROM inventory;



--4. How many customers have the last name ‘William’?
-- NO data
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'William';

--5. What store employee (get the id) sold the most rentals?
--Jon Stephens and Mike Hillyer
SELECT DISTINCT MAX(amount),first_name, last_name 
FROM staff, payment
WHERE amount > 0 
GROUP BY staff.first_name, staff.last_name;
--6. How many different district names are there?
--Tried to use sum to get total number of district names
SELECT DISTINCT  district 
FROM  address
GROUP BY address.district;

--7. What film has the most actors in it? (use film_actor table and get film_id)
-- film id 958 has the most actors (200 actors total)
SELECT  actor_id , film_id
FROM film_actor
GROUP BY film_actor.actor_id, film_actor.film_id 
ORDER BY actor_id DESC;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- says customer_id and store_id do not exist
SELECT customer
FROM store_id
WHERE store LIKE 'es'
GROUP BY customer.last_name;
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--NO Data unsure if i misunderstood question
SELECT customer_id,rental_id
FROM payment
WHERE amount > 4.99 AND amount < 5.99
GROUP BY payment.customer_id, payment.rental_id
HAVING  MIN (amount)> 250;


--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
--unsure of the question again 
SELECT category_id
FROM film_category
WHERE film_id > category_id
GROUP BY film_category.category_id
HAVING max(film_id) > 0;
