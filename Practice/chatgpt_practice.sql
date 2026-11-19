create table university_gpa (
	id int,
	names varchar(20),
	age int,
	major varchar(10),
	gpa decimal(2, 1)
	);

INSERT INTO university_gpa
(id, names, age, major, gpa)
VALUES
(1, 'Ali', 20, 'AI', 3.8),
(2, 'Vali', 19, 'CS', 3.2),
(3, 'Hasan', 21, 'AI', 3.5),
(4, 'Madina', 20, 'IT', 3.9),
(5, 'Sardor', 22, 'CS', 2.8),
(6, 'Malika', 19, 'AI', 3.7),
(7, 'Aziz', 21, 'IT', 3.1);

SELECT * from university_gpa;

SELECT names, gpa from university_gpa;

SELECT * from university_gpa WHERE age > 20;

SELECT * from university_gpa WHERE major = 'AI';

SELECT * from university_gpa WHERE gpa >= 3.5;

SELECT * from university_gpa ORDER BY gpa DESC;

SELECT * from university_gpa WHERE age >= 20;
