SELECT DISTINCT replacement_cost FROM film;

SELECT COUNT (DISTINCT replacement_cost) FROM film;

SELECT COUNT (DISTINCT title)FROM film
WHERE title LIKE 'T%' AND rating = 'G';

SELECT COUNT (*) FROM country
WHERE country LIKE '_____';

SELECT COUNT (*) FROM city
WHERE city LIKE 'R%r';