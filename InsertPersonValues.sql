
--Insert Person
INSERT INTO Person ([id],[name],[lastName],[dob])
VALUES (1, 'John', 'Doe', '01-01-1990')

--Insert Email
INSERT INTO PersonEmail ([idMail],[mail])
VALUES (1, 'john.doe@gmail.com')
INSERT INTO PersonEmail ([idMail],[mail])
VALUES (2, 'john.doe@hotmail.com')

--Insert Person Email
INSERT INTO PersonPersonEmail ([id],[idMail])
VALUES (1, 1)
INSERT INTO PersonPersonEmail ([id],[idMail],[default])
VALUES (1, 2, 0)

--Insert Address
INSERT INTO PersonAddress ([idAddress],[address1],[address2],[city],[state],[country])
VALUES (1, 'Apt Flower','Floor 3 Apt 4','Miami','FL','USA')
INSERT INTO PersonAddress ([idAddress],[address1],[address2],[city],[state],[country])
VALUES (2, 'Sabana Town Center',NULL,'Scottsdale','AZ','USA')

--Insert Person Address
INSERT PersonPersonAddress ([id], [idAddress])
VALUES (1, 1)
INSERT PersonPersonAddress ([id], [idAddress],[default])
VALUES (1, 2, 0)


--SELECT * FROM PERSON
--SELECT * FROM PersonEmail
--SELECT * FROM PersonPersonEmail
--SELECT * FROM PersonAddress
--SELECT * FROM PersonPersonAddress