SELECT *
FROM pachadataformation.contact
WHERE email REGEXP '^.{20,30}$';