-- Inserting sample data

-- Sample data for CurrentCourses
INSERT INTO CurrentCourses (CourseCode, CourseName) VALUES
(101, 'Introduction to Programming'),
(102, 'Database Management Systems'),
(103, 'Web Development');

-- Sample data for AcademicHistory
INSERT INTO AcademicHistory (CourseCode, CourseName, Term, Grade) VALUES
(101, 'Introduction to Programming', 'Fall 2022', 'A'),
(102, 'Database Management Systems', 'Spring 2023', 'B'),
(103, 'Web Development', 'Fall 2023', 'A');

-- Sample data for AddCourses
INSERT INTO AddCourses (CourseCode, CourseName, PrerequisiteSubjectCode) VALUES
(201, 'Advanced Programming', 101),
(202, 'Data Structures', 101),
(203, 'Advanced Web Development', 103);

-- Sample data for Programs
INSERT INTO Programs (ProgramCode, ProgramName, EnrollmentNumber) VALUES
(301, 'Computer Science', 100),
(302, 'Information Technology', 80),
(303, 'Web Development', 50);

-- Sample data for Students
INSERT INTO Students (StudentID, LastName, FirstName, HomePhoneNumber, CellPhoneNumber, EmailID, ProgramCode, ProgramName) VALUES
(401, 'Smith', 'John', '123-456-7890', '987-654-3210', 'john.smith@example.com', 301, 'Computer Science'),
(402, 'Johnson', 'Emily', '555-123-4567', '111-222-3333', 'emily.johnson@example.com', 302, 'Information Technology'),
(403, 'Patel', 'Rahul', '987-654-3210', '123-456-7890', 'rahul.patel@example.com', 303, 'Web Development'),
(404, 'Sharma', 'Priya', '555-999-8888', '111-555-6666', 'priya.sharma@example.com', 301, 'Computer Science'),
(405, 'Verma', 'Amit', '777-888-9999', '333-444-5555', 'amit.verma@example.com', 302, 'Information Technology');


-- Sample data for Instructors
INSERT INTO Instructors (InstructorID, LastName, FirstName, HomePhoneNumber, CellPhoneNumber, Email, DepartmentCode, DepartmentName) VALUES
(501, 'Miller', 'David', '999-888-7777', '444-555-6666', 'david.miller@example.com', 401, 'Computer Science'),
(502, 'Jones', 'Sarah', '111-222-3333', '777-888-9999', 'sarah.jones@example.com', 402, 'Information Technology');

-- Sample data for CourseOfferings
INSERT INTO CourseOfferings (OfferingCode, CourseCode, CourseName, Semester, InstructorID, InstructorName, EnrollmentNumbers) VALUES
(601, 101, 'Introduction to Programming', 'Fall 2022', 501, 'David Miller', '401,402'),
(602, 102, 'Database Management Systems', 'Spring 2023', 502, 'Sarah Jones', '401,402');
