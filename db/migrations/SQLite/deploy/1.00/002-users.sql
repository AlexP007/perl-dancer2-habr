BEGIN TRANSACTION;

INSERT INTO user ("login", "email")
VALUES ("Jenya", "j@mail.ru"),
	   ("Mila", "m@mail.ru");

COMMIT;