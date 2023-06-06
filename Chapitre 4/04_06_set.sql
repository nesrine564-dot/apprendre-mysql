ALTER TABLE evenement
DROP categories;

ALTER TABLE evenement
ADD categories SET('festival', 'congrès', 'dîner', 'rencontre')
NOT NULL DEFAULT '';

INSERT INTO `pachadataformation`.`evenement`
(`nom`, `dateevenement`, `categories`)
values ('MySQL Festival', '2022-08-15', 'rencontre,festival');

SELECT *, BIN(categories+0)
FROM evenement;

UPDATE evenement
SET categories = CONCAT(categories, ',congrès,congrès')
WHERE evenementid = 18;

SELECT *, BIN(categories+0)
FROM evenement
WHERE find_in_set('festival', categories) > 0;