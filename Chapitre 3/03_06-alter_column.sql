ALTER TABLE evenement
ADD utilisateur VARCHAR(50) NULL;

ALTER TABLE evenement
MODIFY utilisateur VARCHAR(60) NULL;

ALTER TABLE evenement
CHANGE utilisateur `user` VARCHAR(60) NULL;

ALTER TABLE evenement
DROP `user`;
