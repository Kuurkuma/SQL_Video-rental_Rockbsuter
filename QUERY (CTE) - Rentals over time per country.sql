--rentals over time per country
WITH Rental_Details AS (
    SELECT 
        f.title AS movie_title,
        r.rental_date,
        cl.country,
        c.name AS genre,
        SUM(p.amount) AS total_revenue 
    FROM rental AS r
    JOIN inventory AS i ON r.inventory_id = i.inventory_id
    JOIN film_category AS fc ON i.film_id = fc.film_id
    JOIN film AS f ON fc.film_id = f.film_id
    JOIN category AS c ON fc.category_id = c.category_id
    JOIN customer_list AS cl ON r.customer_id = cl.id
    JOIN payment AS p ON r.rental_id = p.rental_id
    GROUP BY 
        movie_title,
        r.rental_date,
        cl.country,
        genre
)
SELECT movie_title, rental_date,country,total_revenue
FROM Rental_Details
ORDER BY rental_date
;
