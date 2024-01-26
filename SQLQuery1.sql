CREATE DATABASE RainbowSchoolDB;

USE RainbowSchoolDB;

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ClassID INT,
	);

	INSERT INTO Classes (ClassID, ClassName) VALUES
(1, 'Class 1'),
(2, 'Class 2'),
(3, 'Class 3');

SELECT *FROM Classes;

INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(101, 'Math'),
(102, 'Science'),
(103, 'English');

SELECT *FROM Subjects;

INSERT INTO Students (StudentID, FirstName, LastName, ClassID) VALUES
(1, 'charu', 'priya', 1),
(2, 'faith', 'sara', 2),
(3, 'jessie', 'leiker', 1),
(4, 'srikar', 'rao', 3);

SELECT *FROM Students;

CREATE INDEX IX_Students_ClassID ON Students (ClassID);

CREATE INDEX IX_Students_LastName ON Students (LastName);

CREATE INDEX IX_Subjects_SubjectName ON Subjects (SubjectName);