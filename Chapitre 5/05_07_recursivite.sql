WITH RECURSIVE cte AS (
	SELECT e.employeid, e.nom, e.chefid
	FROM employe e
	WHERE e.employeid = 8
    
    UNION ALL

	SELECT e.employeid, e.nom, e.chefid
	FROM employe e
	JOIN cte ON cte.chefid = e.employeid    
)
SELECT *
FROM cte;



