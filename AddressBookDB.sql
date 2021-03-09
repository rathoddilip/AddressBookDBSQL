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
------- UC8 --------------------------
SELECT * FROM addressBook WHERE city = 'Pune' ORDER BY firstName;
