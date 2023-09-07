# SQL_Video-rental_Rockbsuter

## Context
Rockbuster Stealth LLC is a movie rental company.
The management team want to **launch an online video rental service** in order to stay competitive.
This analysis is here to help the launch of this online platform by giving insights from inventory and customers.

## Objectives
The Management Board has asked a series of business questions and they expect data-driven answers that they can use for their strategy. 

- Which countries are Rockbuster customers based in?
- Do sales figures vary between geographic regions?
- Which movies contributed the most/least to revenue gain?
- What was the average rental duration for all videos?

## Analysis

### Geographical
Let's focus on customers & revenues from a geographical point of view by answering those questions:
- Which countries are Rockbuster customers based in?
- Do sales figures vary between geographic regions?

<img width="1642" alt="image" src="https://github.com/Kuurkuma/SQL_Video-rental_Rockbsuter/assets/135337076/bf09e3a9-b11f-41a4-adfb-561822caf198">

### Query (using JOINS)
```
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
```



[LINK to Tableau Dashboard](https://public.tableau.com/app/profile/teddy.bernays/viz/Rockbuster_16926436031340/REVENUECUSTOMER?publish=yes)
