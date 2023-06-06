ALTER TABLE evenement
DROP categories;

ALTER TABLE evenement
ADD categorie ENUM('festival', 'congrès', 'dîner', 'rencontre');

SELECT *, categorie+0
FROM evenement
WHERE categorie = 1;

UPDATE evenement 
SET categorie = 'festivals'
WHERE evenementid = 18;

SELECT *, categorie+0
FROM evenement
ORDER BY CONCAT(categorie);