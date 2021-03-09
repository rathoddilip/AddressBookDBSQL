select * from addressBook;
------- UC1 --------------------------
CREATE DATABASE addressBook_service;
use addressBook_service;


------- UC3 --------------------------
INSERT INTO  addressBook(firstName, lastName, address, city, state, zip, phoneNumber, email)VALUES
('Arjun', 'Jadhav', 'Dhule', 'Dhule', 'Maharashtra', '424105', '1234567890', 'arjun@gmail.com'),
('Suresh', 'Chavan', 'Bhadgaon', 'Pune', 'Maharashtra', '424108', '0987654321', 'suresh@gmail.com'),
('Sayali', 'Rathod', 'Chalisgaon', 'Nashik', 'Maharashtra', '424106', '1122334455', 'sayali@gmail.com');
------- UC4 --------------------------
UPDATE addressBook SET phoneNumber = '9988776655' WHERE FirstName = 'Ranjit';
SELECT * FROM addressBook;
------- UC5 --------------------------
DELETE FROM addressBook WHERE firstName = 'Arjun';
DELETE FROM addressBook WHERE firstName = 'Dilip';
DELETE FROM addressBook WHERE firstName = 'Sandip';
DELETE FROM addressBook WHERE firstName = 'Ranjit';
DELETE FROM addressBook WHERE firstName = 'Sayali';
SELECT * FROM addressBook;
------- UC6 --------------------------
SELECT * FROM addressBook WHERE city = 'Dhule';
SELECT * FROM addressBook WHERE state = 'Maharashtra';

------- UC7 --------------------------
SELECT city, COUNT(city) AS cityCount FROM addressBook GROUP BY city;
SELECT state, COUNT(state) AS stateCount FROM addressBook GROUP BY state;

------- UC8 : Retrieves entries sorted alphabatically by person's name--------------------------
INSERT INTO  addressBook(firstName, lastName, address, city, state, zip, phoneNumber, email)VALUES
('Dilip', 'Rathod', 'Dhule', 'pune', 'Maharashtra', '424105', '1122334466', 'dilip@gmail.com'),
('Ganesh', 'Chavan', 'Bhadgaon', 'Pune', 'Maharashtra', '424108', '6666655555', 'ganesh@gmail.com'),
('Krishabh', 'Rathod', 'Chalisgaon', 'Nashik', 'Maharashtra', '424106', '4433221155', 'krishabh@gmail.com');

SELECT * FROM addressBook WHERE city = 'Pune' ORDER BY firstName ASC;
SELECT * FROM addressBook;

------- UC9:identify each address book with name and type --------------------------

ALTER table addressBook ADD type VARCHAR(20);
ALTER table addressBook ADD fullName AS firstName + ' ' + lastName;
SELECT * FROM addressBook;
UPDATE addressBook SET type = 'FRIENDS';
UPDATE addressBook SET type = 'FAMILY' WHERE firstName = 'Arjun' or firstName = 'Ganesh';
UPDATE addressBook SET type = 'PROFESSION' WHERE firstName = 'Dilip';
ALTER TABLE addressBook DROP COLUMN Name;
SELECT * FROM addressBook;
------- UC10:Get the number of contact person count by Type --------------------------
SELECT type, COUNT(*) AS typeCount FROM addressBook GROUP BY type;

--------------- UC11:to add person to both friend and family ---------------------------------

INSERT INTO  addressBook (firstName, lastName, address, city, state, zip, phoneNumber, email , type)VALUES
('Pradip', 'Jadhav', 'Parola', 'Jalgoan', 'Maharashtra', '424100', '7766554433', 'pradip@gmail.com', 'FAMILY');
SELECT * FROM addressBook;