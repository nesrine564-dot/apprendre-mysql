-- DML
-- DDL - Data Definition Language

CREATE TABLE IF NOT EXISTS `evenement` (
  `evenementid` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `nbparticipants` smallint unsigned NOT NULL DEFAULT '0',
  `commentaire` mediumtext,
  `dateevenement` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`evenementid`),
  UNIQUE KEY `nom_UNIQUE` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE evenement AUTO_INCREMENT = 10;
ALTER TABLE evenement2 RENAME evenement;

SHOW CREATE TABLE evenement;

-- DROP TABLE evenement