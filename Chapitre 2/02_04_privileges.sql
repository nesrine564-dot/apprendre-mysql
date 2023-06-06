GRANT SELECT ON mysql.user TO rudi@'%';
REVOKE SELECT ON mysql.user FROM rudi@'%';

GRANT SELECT ON mysql.* TO rudi@'%';
SELECT * FROM mysql.global_grants;

REVOKE SELECT ON mysql.* FROM rudi@'%';
REVOKE SELECT ON mysql.user FROM rudi@'%';

GRANT ALL PRIVILEGES ON *.* TO  rudi@'%';

SELECT * FROM mysql.user;
SELECT * FROM mysql.tables_priv;
SELECT * FROM mysql.global_grants;

SHOW GRANTS;
SHOW GRANTS FOR rudi@'%';