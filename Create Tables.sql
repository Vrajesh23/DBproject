-- Creating tables

-- Table: CurrentCourses
CREATE TABLE CurrentCourses (
    CourseCode INT PRIMARY KEY,
    CourseName VARCHAR(255) NOT NULL
);

-- Table: AcademicHistory
CREATE TABLE AcademicHistory (
    CourseCode INT,
    CourseName VARCHAR(255) NOT NULL,
    Term VARCHAR(50) NOT NULL,
    Grade VARCHAR(5) NOT NULL,
    PRIMARY KEY (CourseCode, Term),
    FOREIGN KEY (CourseCode) REFERENCES CurrentCourses(CourseCode)
);

-- Table: AddCourses
CREATE TABLE AddCourses (
    CourseCode INT PRIMARY KEY,
    CourseName VARCHAR(255) NOT NULL,
    PrerequisiteSubjectCode INT
);

-- Table: Programs
CREATE TABLE Programs (
    ProgramCode INT PRIMARY KEY,
    ProgramName VARCHAR(255) NOT NULL,
    EnrollmentNumber INT
);

-- Table: Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    HomePhoneNumber VARCHAR(20),
    CellPhoneNumber VARCHAR(20),
    EmailID VARCHAR(255),
    ProgramCode INT,
    ProgramName VARCHAR(255),
    FOREIGN KEY (ProgramCode) REFERENCES Programs(ProgramCode)
);

-- Table: Instructors
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    HomePhoneNumber VARCHAR(20),
    CellPhoneNumber VARCHAR(20),
    Email VARCHAR(255),
    DepartmentCode INT,
    DepartmentName VARCHAR(255)
    -- Remove the following line if 'Departments' table does not exist or is not intended to be referenced
    -- FOREIGN KEY (DepartmentCode) REFERENCES Departments(DepartmentCode)
);

-- Table: CourseOfferings
CREATE TABLE CourseOfferings (
    OfferingCode INT PRIMARY KEY,
    CourseCode INT,
    CourseName VARCHAR(255) NOT NULL,
    Semester VARCHAR(50) NOT NULL,
    InstructorID INT,
    InstructorName VARCHAR(255),
    EnrollmentNumbers TEXT,
    FOREIGN KEY (CourseCode) REFERENCES CurrentCourses(CourseCode),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);
