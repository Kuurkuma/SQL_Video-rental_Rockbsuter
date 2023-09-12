-- Calculate the average payment amount for the top 5 customers in select cities

SELECT ROUND(AVG(average.total_amount_paid), 2) AS average_payment_amount
FROM (
    -- Subquery to find the total payment amounts for the top 5 customers in specific cities
    SELECT
        cu.customer_id,
        cu.first_name,
        cu.last_name,
        cy.city,
        SUM(p.amount) AS total_amount_paid
    FROM
        customer AS cu
    JOIN address AS a USING (address_id)
    JOIN city AS cy USING (city_id)
    JOIN country AS co USING (country_id)
    JOIN payment AS p USING (customer_id)
    WHERE cy.city IN ('Aurora', 'Acua', 'Citrus Heights', 'Iwaki', 'Ambattur', 'Shanwei', 'So Leopoldo', 'Teboksary', 'Tianjin', 'Cianjur')
    GROUP BY
        cu.customer_id,
        cu.first_name,
        cu.last_name,
        cy.city
    ORDER BY
        total_amount_paid DESC
    LIMIT 5
) AS average;
