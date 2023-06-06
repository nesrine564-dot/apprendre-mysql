SELECT *
FROM evenement;

REPLACE INTO evenement
(nom, dateevenement)
values ('MySQL Festival', '2022-09-15');

INSERT INTO evenement
(nom, dateevenement)
values ('MySQL Festival', '2022-10-15')
ON DUPLICATE KEY UPDATE dateevenement = '2022-10-15';

