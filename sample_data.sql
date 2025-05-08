
-- sample_data.sql
INSERT INTO Students VALUES (1, 'Mugisha Eric', 'Computer Science', 2, '0789123456');
INSERT INTO Students VALUES (2, 'Uwase Divine', 'Information Systems', 1, '0789234567');
INSERT INTO Students VALUES (3, 'Niyonsaba Claude', 'Software Engineering', 3, '0789345678');
INSERT INTO Students VALUES (4, 'Ishimwe David', 'Computer Science', 2, '0789456789');
INSERT INTO Students VALUES (5, 'Mukamana Alice', 'Information Systems', 1, '0789567890');

INSERT INTO Instructors VALUES (1, 'Ndahiro Jean', 'Computer Science');
INSERT INTO Instructors VALUES (2, 'Umutoni Grace', 'Information Systems');

INSERT INTO Courses VALUES ('CS101', 'Database Systems', 1);
INSERT INTO Courses VALUES ('IS102', 'Management Information Systems', 2);

INSERT INTO Grades VALUES (1, 1, 'CS101', 88.5, 'A');
INSERT INTO Grades VALUES (2, 2, 'IS102', 76.0, 'B');
INSERT INTO Grades VALUES (3, 3, 'CS101', 82.0, 'B');
INSERT INTO Grades VALUES (4, 4, 'IS102', 85.0, 'A');
INSERT INTO Grades VALUES (5, 5, 'CS101', 79.0, 'B');
