-- Revenue & Customer count per country

SELECT 
	cl.country,
	COUNT(DISTINCT cl.id) AS customer_count,
	SUM(p.amount) AS total_revenue
FROM customer_list AS cl
JOIN payment AS p ON cl.id = p.customer_id
GROUP BY cl.country
ORDER BY total_revenue DESC
;
