SELECT 
	YEAR(datefacture) as annee, 
    MONTH(datefacture) as mois,
    SUM(montantht) as ca,
    SUM(SUM(montantht)) OVER a,
    AVG(SUM(montantht)) OVER a
FROM facture
GROUP BY YEAR(datefacture), MONTH(datefacture)
WINDOW a AS (PARTITION BY YEAR(datefacture))
ORDER BY annee, mois;