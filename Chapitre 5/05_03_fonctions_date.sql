SELECT titre, prenom, nom, email,
	-- CONCAT(titre, ' ', prenom, ' ', nom),
    -- CONCAT_WS(' ', titre, prenom, nom),
    TRIM('     coucou          '),
    TRIM(LEADING 'v.' FROM email),
    TRIM(TRAILING '.com' FROM email),
    TRIM(BOTH 'c' FROM email)
FROM contact;