
-- INTRO TO SQL, SELECT ALL FROM "actor" TABLE
SELECT*
FROM actor;

--Query for first and last NAME
SELECT first_name, last_name
FROM actor;

--Be more speceific.. look for a first name which  equals "Nick"
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg'

-- Quey being specific again using the "like" clause
SELECT last_name
FROM actor
WHERE first_name LIKE 'Nick';

--USE LIKE CLAUSE AND WILD CARD symbol = (%)
-- get all "j" names
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%'

-- SINGLE CHARACTER WILD CARD ( _ )
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K___'


-- Query for all first names withK has 2 letter, then anything goes
SELECT first_name
FROM actor
WHERE first_name LIKE 'K____%'

-- COMPARING OPERATORS
-- > Greater than
-- < Less than
-- >= <=

-- <> IS NOT EQUAL TO IN SQL

SELECT *
FROM payment;

--WHERE ammounts paid greater than $10
SELECT customer_id, amount
FROM payment
Where amount  > 10;

--QUERY FOR PAYMENTS BETWEEN $10-15
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 10.99 AND 14.99;

--LETS order the payments by amount
SELECT customer_id, amount, payment
FROM payment
WHERE amount > 10
ORDER BY amount DESC;

--LETS order the payment by DATE
SELECT customer_id, amount
FROM payment
WHERE amount > 10
ORDER BY payment_date DESC;

--Query all payments not equel to 10.99
SELECT customer_id, amount
FROM payment
WHERE amount <> 10.99
ORDER BY amount DESC;

--SQL AGGREGATIONS => SUM(), AVG(), MIN(), MAX()

--queary to display the sum of the amount greater than 5.99

SELECT SUM(amount)
FROM payment
WHERE amount >= 5.99;

--query to display the average of the maount payed great or equal to 5.99
SELECT AVG(amount)
FROM payment
WHERE amount >= 5.99;

--count up to how many amount paid over or equal to 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount >= 5.99;

--Query to display the count of distinct amounts paid(gets rid of duplicates)
SELECT DISTINCT amount
FROM payment
WHERE amount >= 5.99

--query the min amount paid
SELECT MIN(amount)
FROM payment
WHERE amount >=0;


--query max paid
SELECT MAX(amount) as most_money_paid
FROM payment;

--group by demonstration (this works with aggregators)
Select amountFROM payment
WHERE paymentWHERE amount = 7.99

SELECT customer_id
FROM payment;

SELECT customer_id, COUNT(amount)
FROM payment
WHERE amount = 7.99
GROUP BY cusomer_id;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;



