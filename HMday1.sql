--Question 1
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg'
--Question 2
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Question 3
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--Question 4
Select last_name
FROM customer
WHERE last_name = 'William'

--Question 5
SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id;
--Question 6

SELECT COUNT (DISTINCT district)
FROM address;

--Question 7
SELECT DISTINCT actor_id, COUNT(film_id)
FROM film_actor
GROUP BY actor_id, film_id
ORDER BY COUNT(film_id) DESC;

--Question 8
SELECT SUM(store_id)
from customerwhrer last_name LIKE '%es'
group by store_id

--Question 9



--Question 10


