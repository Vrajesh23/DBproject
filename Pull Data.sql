-- Retrieving data

-- Retrieve all students and their programs
SELECT * FROM Students;

-- Retrieve academic history of a specific student
SELECT * FROM AcademicHistory WHERE CourseCode IN (SELECT CourseCode FROM Students WHERE StudentID = 401);

-- Retrieve course offerings for a specific semester
SELECT * FROM CourseOfferings WHERE Semester = 'Fall 2022';

-- Retrieve all instructors and their departments
SELECT * FROM Instructors;
