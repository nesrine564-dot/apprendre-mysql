INSERT INTO `pachadataformation`.`evenement`
(`nom`, `dateevenement`, `categories`)
VALUES ('MySQL Festival', '2022-08-15', 3);
-- 0000000011

SELECT *, BIN(categories)
FROM evenement;

SELECT LAST_INSERT_ID()

DELETE FROM evenement
WHERE evenementid = LAST_INSERT_ID();