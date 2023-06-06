SHOW GRANTS;

REVOKE SELECT ON mysql.* FROM rudi@'%';

CREATE ROLE catalog_reader, pacha_reader;
CREATE ROLE catalog_reader@localhost;

GRANT SELECT ON mysql.* TO catalog_reader;

GRANT catalog_reader TO rudi@'%';

SHOW GRANTS FOR rudi@'%';
SHOW GRANTS FOR rudi@'%' USING catalog_reader;

SELECT * FROM mysql.user;

SELECT CURRENT_ROLE();
SET ROLE catalog_reader;
SET DEFAULT ROLE catalog_reader TO rudi@'%';