-- Hello World SQL Query, SELECT ALL records from the actor table
SELECT *
FROM actor;




-- Query for first_name and last_name in the actor table
SELECT first_name, last_name
FROM actor;

SELECT film_id, COUNT(*) as count
FROM inventory
GROUP BY film_id
ORDER BY count DESC
LIMIT 1;




-- Query for a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE last_name = 'William';

-- Query for a first_name that equals Nick using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_names that start with the letter N using the LIKE and WHERE clauses -- using the Wildcard symbol
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N%';

-- Query for all first_names that start with K and have 2 letters after the K using LIKE/WHERE clauses -- using the underscore symbol
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_names that start with K and have 2 letters after the K using LIKE/WHERE clauses -- combine wildcard and underscore
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%n';


-- Comparing operators in SQL:
-- Greater Than ( > ) -- Less Than ( < )
-- Greater OR Equal To ( >= ) -- Less OR Equal To ( <= )
-- Not Equal ( <> )

-- Explore the data with a SELECT ALL Query
SELECT * 
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Query for data that shows customers who paid
-- an amount that was GREATER than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;


SELECT film_id, COUNT(*) as inventory_count
FROM inventory
GROUP BY film_id
ORDER BY inventory_count DESC
LIMIT 1;

-- Query for data that shows customers who paid
-- an amount LESS than $7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

-- Query for data that shows customers who paid
-- an amount LESS than OR EQUAL to $7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;


SELECT COUNT(DISTINCT rating) 
FROM film;

SELECT rating, COUNT(*) as movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;

SELECT film_id, COUNT(*) as actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;

-- Query for data that shows customers who paid
-- an amount GREATER than or EQUAL to $2.00
-- Doing so in Ascending order using the ORDER BY clause
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

-- Query for data that shows customers who paid
-- an amount NOT EQUAL to $0.00
-- Order the results in DESCENDING order

SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

-- Boolean Operators in SQL
-- BETWEEN
-- AND

-- Query for data that shows customers who paid
-- an amount BETWEEN $2.00 and $7.99
-- Using the BETWEEN with the AND Clause -- Attached to the WHERE Clause
SELECT customer_id,
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99
ORDER BY amount DESC;


-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display sum of amounts payed that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99 AND customer_id = 13;

-- Query to display the average of amounts payed that are greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of amounts payed that are greater than $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the DISTINCT count of amounts payed that are greater than $5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the lowest amount that is greater than $7.99
SELECT MIN(amount) AS Min_Num_Payments
FROM payment
WHERE amount > 7.99;

-- Query to display the highest amount that is greater than $7.99
SELECT MAX(amount) AS Max_Num_Payments
FROM payment
WHERE amount > 7.99;

-- Using the GROUP BY Clause
-- Query to display all amount above 7.99 (To display what the GROUP BY Clause does)
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display the count of the amount equal to $7.99
-- WHILE ALSO displaying the actual amount as well
-- Using the GROUP BY clause to produce the count
SELECT amount, COUNT(amount)
FROM payment
WHERE amount = 7.99
GROUP BY amount;

-- Query to display customer_ids with the summed amounts for each customer
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

-- Query to display summed amounts for each customer_id
-- The result given will show similar values from the previous example
SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

-- SQL HAVING CLAUSE

-- Query to display customer_ids that show up more than 5 times(if available)
-- Group By the customer's email
SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j___.e%'
GROUP BY email
HAVING COUNT(customer_id) > 0;

SELECT email
FROM customer;

SELECT COUNT(*) 
FROM customer
WHERE last_name LIKE '%es';

SELECT staff_id, COUNT(*) as rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;


day1-rangers59-lecture.sql
Displaying monday_questions (1).pdf.
SQL - Day 1- Homework
Unknown user
•
Oct 28, 2021 (Edited Nov 1)
5 points
Given the skills and queries we covered today, answer the following 10 questions.

Once completed create/save the queries (SQL Code) in a .sql file using DBeaver and commit the file to github. Afterwhich you will need to submit the github link to the assignment.

Answers to the queries may vary - we are more interested in seeing how you think about and query the data more than 'being right' here.

monday_questions (1).pdf
PDF

day1-rangers59-lecture.sql
SQL

dvd-rental-sample-database-er-diagram (1).png
Image
/5
/2
