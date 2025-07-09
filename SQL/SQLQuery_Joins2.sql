--Create Table
CREATE TABLE Student (
Stud_id int,
Name varchar(25),
Br_id int,
Email varchar(20),
City_id int);

--Insert Values
INSERT INTO Student VALUES
(1001,'Ankit',101,'ankit@bmail.com',1),
(1002,'Pranav',105,'pranav@bmail.com',2),
(1003,'Raj',102,'raj@bmail.com',2),
(1004,'Shyam',112,'shyam@bmail.com',4),
(1005,'Duke',112,'duke@bmail.com',2),
(1006,'Jhon',102,'jhon@bmail.com',3),
(1007,'Aman',101,'aman@bmail.com',4),
(1008,'Pavan',111,'pavan@bmail.com',13),
(1009,'Virat',112,'virat@bmail.com',12);


--Create Table
CREATE TABLE Branch (
Br_id int,
Br_name varchar(5),
HOD varchar(20),
Contact varchar(10));

--Insert Values
INSERT INTO Branch VALUES 
(101,'CSE','SH Rao','22345'),
(102,'MECH','AP Sharma','28210'),
(103,'EXTC','VK Reddy','34152'),
(104,'CHEM','SK Mehta','45612'),
(105,'IT','VL Shelke','22521'),
(106,'AI','KH Verma','12332'),
(107,'PROD','PG Kakde','90876');


--Create Table
CREATE TABLE Address(
City_id int,
City varchar(15),
Pincode varchar(10));

--Insert Values
INSERT INTO Address VALUES 
(1,'Mumbai','400121'),
(2,'Pune','450011'),
(3,'Lucknow','553001'),
(4,'Delhi','443221'),
(5,'Kolkata','213445'),
(6,'Chennai','345432'),
(7,'Nagpur','323451'),
(8,'Sri Nagar','321321');


SELECT *FROM Student
SELECT *FROM Branch
SELECT *FROM Address


-- Example: Obtain students' names along with their branch names, HOD, city, and Pincode.
-- INNER JOIN OR JOIN
SELECT Student.Name, Branch.Br_name, Branch.HOD, Address.City, Address.Pincode 
FROM Branch
JOIN Student ON Student.Br_id = Branch.Br_id
JOIN Address ON Student.City_id = Address.City_id


-- Example: Obtain all the names of the students even if they are not present in any City and Branch.
-- LEFT JOIN
SELECT Student.Name, Address.City,Branch.Br_name
FROM Student
LEFT JOIN Branch ON Student.Br_id = Branch.Br_id
LEFT JOIN Address ON Student.City_id = Address.City_id


-- Example: Obtain all the Student Names even if they are not present in any Branch whereas excluding the Name which is not present in any city.
-- INNER JOIN/ JOIN and LEFT JOIN
SELECT Student.Name, Branch.Br_name, Address.City
FROM Student
LEFT JOIN Branch ON Student.Br_id = Branch.Br_id
JOIN Address ON Student.City_id = Address.City_id


-- Example: Obtain Names of students along with their branch name, their HOD, city, and Pincode.
-- WHERE and AND 
SELECT Student.Name, Branch.Br_name, Branch.HOD, Address.City, Address.Pincode
FROM Branch, Student, Address
WHERE Student.Br_id = Branch.Br_id
AND Student.City_id = Address.City_id

--ALTERNATE WAY FOR ABOVE EXAMPLE
SELECT Student.Name, Branch.Br_name, Branch.HOD, Address.City, Address.Pincode
FROM Student
JOIN Branch ON Student.Br_id = Branch.Br_id
JOIN Address ON Student.City_id = Address.City_id


-- FULL OUTER JOIN
SELECT Student.Name, Address.City,Branch.Br_name
FROM Student
FULL OUTER JOIN Branch ON Student.Br_id = Branch.Br_id
FULL OUTER JOIN Address ON Student.City_id = Address.City_id


-- RIGHT JOIN
SELECT Student.Name, Branch.Contact
FROM Student
RIGHT JOIN Branch ON Student.Br_id = Branch.Br_id


SELECT Student.Name, Branch.Contact, Address.City
FROM Student
RIGHT JOIN Branch ON Student.Br_id = Branch.Br_id
RIGHT JOIN Address ON	Student.City_id = Address.City_id