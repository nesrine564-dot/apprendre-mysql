SELECT *
FROM facture
LIMIT 10;

SELECT CURDATE(), CURRENT_DATE(),
	CURTIME(), CURRENT_TIME(),
    NOW(), CURRENT_TIMESTAMP()
    
SELECT 
	DATE(datecreation),
    TIME(datecreation),
    MONTHNAME(datecreation),
    EXTRACT(MONTH FROM datecreation),
    EXTRACT(YEAR_MONTH FROM datecreation),
    EXTRACT(HOUR_MINUTE FROM datecreation),
    DATE_FORMAT(datecreation, '%M %Y'),
    DATE_FORMAT(datecreation, GET_FORMAT(DATE, 'EUR'))
FROM facture
LIMIT 10;

SELECT GET_FORMAT(DATE, 'EUR')