-- Summary stats_film table
SELECT 
    COUNT(*) AS total_films,
    MIN(release_year) AS oldest_film,
    MAX(release_year) AS most_recent_film, --useless because our DB has only movies from 2006
    MIN(rental_duration) AS min_rental_duration,
    MAX(rental_duration) AS max_rental_duration,
    ROUND (AVG(rental_duration),2) AS avg_rental_duration,
    MIN(rental_rate) AS min_rental_rate,
    MAX(rental_rate) AS max_rental_rate,
    ROUND (AVG(rental_rate),2) AS avg_rental_rate,
    MIN(length) AS min_length,
    MAX(length) AS max_length,
    ROUND (AVG(length),0) AS avg_length,
    MIN(replacement_cost) AS min_replacement_cost,
    MAX(replacement_cost) AS max_replacement_cost,
    ROUND(AVG(replacement_cost), 2) AS avg_replacement_cost,
    MODE() WITHIN GROUP (ORDER BY rating) AS mode_rating
FROM film;
