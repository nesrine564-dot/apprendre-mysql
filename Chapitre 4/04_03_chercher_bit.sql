INSERT INTO `pachadataformation`.`evenement`
(`nom`, `dateevenement`, `categories`)
VALUES ('MySQL Festival', '2022-08-15', b'1001');

SELECT *, LPAD(BIN(categories), 10, '0')
FROM evenement;

SELECT *
FROM evenement;
WHERE categories & b'1001' = b'1001';
-- 0010001001
-- 0000001001
-- 0000001001

UPDATE evenement
SET categories = categories ^ b'10'
WHERE evenementid = 17;
-- 0000001011
-- 0000000010
-- 0000001001

DELETE FROM evenement
WHERE evenementid = 17
WHERE evenementid = LAST_INSERT_ID();