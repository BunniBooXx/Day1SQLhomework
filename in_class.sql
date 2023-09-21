SELECT *
FROM actor;

SELECT first_name , last_name
FROM actor;

-- add specificity to our query
-- WHERE clause 
SELECT first_name, last_name
FROM actor
WHERE last_name = 'wahlberg'; --never use double quotes for strings

--LIKE clause
SELECT first_name, last_name
FROM actor 
WHERE last_name LIKE 'wahlberg';

-- wildcard % 
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE'W%';

--single letter wild card (underscore)
SELECT first_name, last_name
FROM actor
WHERE last_name  LIKE 'C___';

SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'C____%';

-- comparing operators
-- > greater than
-- < less than
-- >= greater or equal to
-- <= less than or equal to
-- != not equal
-- <> not equal

SELECT * 
FROM payment;

-- find all payments greater than $5

SELECT customer_id,amount
FROM payment
WHERE amount > 5;

-- ordering based on amount

SELECT customer_id,amount
FROM payment
WHERE amount > 5
ORDER BY amount DESC;

SELECT customer_id,amount 
FROM payment
WHERE amount > 5 
ORDER BY amount ASC; 

-- conjuctions AND and OR operators
SELECT customer_id,amount 
WHERE amount > 5 AND amount > 100
ORDER BY amount DESC;

SELECT customer_id,amount
FROM payment
WHERE amount > 5 OR customer_id = 3
ORDER BY amount DESC;


-- aggregator
--SUM , AVG, COUNT, MIN, MAX

SELECT SUM (amount)
FROM payment 
WHERE amount > 0;

SELECT AVG(amount)
FROM payment 
WHERE amount > 0; 

SELECT COUNT(amount)
FROM payment
WHERE amount > 0;

SELECT MAX(amount) AS highest_amount_paid
FROM payment
WHERE amount > 0;


SELECT MIN(amount) AS smallest_amount
FROM payment
WHERE amount > 0;

--DISTINCT
SELECT DISTINCT customer_id
FROM payment
WHERE amount > 5;

SELECT COUNT ( DISTINCT customer_id)
FROM payment
WHERE amount > 5;

--GROUP BY 
 SELECT customer_id, SUM(amount)
 FROM payment
 WHERE amount > 0
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

--HAVING CLAUSE
--(Adding a filter to our aggregate)
SELECT customer_id, SUM (amount)
FROM payment
WHERE amount > 0 
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;

--EXTRA STUFF 
--LIMIT, OFFSET

SELECT customer_id, SUM(amount)
FROM payment
WHERE amount > 0 
GROUP BY customer_id
HAVING SUM(amount)> 50 
ORDER BY SUM(amount) DESC
LIMIT 3
OFFSET 1;







