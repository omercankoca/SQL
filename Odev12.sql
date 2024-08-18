SELECT COUNT(*) FROM film
WHERE length > (
	SELECT AVG(length) FROM film
);

SELECT COUNT(*) FROM film
WHERE rental_rate = (
	SELECT MAX(rental_rate) FROM film
);

SELECT * FROM film
WHERE rental_rate = (
	SELECT MIN(rental_rate) FROM film
)
AND
replacement_cost = (
	SELECT MIN(replacement_cost) FROM film
);

SELECT payment.amount, customer.first_name, customer.last_name FROM payment
LEFT JOIN customer ON customer.customer_id = payment.customer_id
WHERE payment.amount = (
	SELECT MAX(amount) FROM payment
);