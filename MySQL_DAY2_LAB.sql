mysql> -- Create Database
mysql> CREATE DATABASE StudentManagementSystem;
mysql> USE StudentManagementSystem;
Database changed
mysql>
mysql> -- Create Student Table
mysql> CREATE TABLE Student (
    ->     StudentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     DateOfBirth DATE,
    ->     Gender ENUM('Male', 'Female', 'Other'),
    ->     Email VARCHAR(100),
    ->     Phone VARCHAR(15)
    -> );
mysql>
mysql> -- Create Course Table
mysql> CREATE TABLE Course (
    ->     CourseID INT PRIMARY KEY AUTO_INCREMENT,
    ->     CourseTitle VARCHAR(100),
    ->     Credits INT
    -> );
mysql>
mysql> -- Create Instructor Table
mysql> CREATE TABLE Instructor (
    ->     InstructorID INT PRIMARY KEY AUTO_INCREMENT,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     Email VARCHAR(100)
    -> );
mysql>
mysql> -- Create Enrollment Table
mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     EnrollmentDate DATE,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    -> );
mysql>
mysql> -- Create Score Table
mysql> CREATE TABLE Score (
    ->     ScoreID INT PRIMARY KEY AUTO_INCREMENT,
    ->     CourseID INT,
    ->     StudentID INT,
    ->     DateOfExam DATE,
    ->     CreditObtained INT,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
mysql>
mysql> -- Create Feedback Table
mysql> CREATE TABLE Feedback (
    ->     FeedbackID INT PRIMARY KEY AUTO_INCREMENT,
    ->     StudentID INT,
    ->     Date DATE,
    ->     InstructorName VARCHAR(100),
    ->     Feedback TEXT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
mysql>
mysql> -- Insert Records into Student Table
mysql> INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES
    -> ('John', 'Doe', '2000-05-15', 'Male', 'john.doe@example.com', '1234567890'),
    -> ('Jane', 'Smith', '1999-08-22', 'Female', 'jane.smith@example.com', '0987654321'),
    -> ('Alice', 'Brown', '2001-03-10', 'Female', 'alice.brown@example.com', '1122334455'),
    -> ('Bob', 'Williams', '2002-06-18', 'Male', 'bob.williams@example.com', '5566778899'),
    -> ('Charlie', 'Johnson', '1998-11-25', 'Other', 'charlie.johnson@example.com', '6677889900');
Query OK, 5 rows affected (0.20 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Course Table
mysql> INSERT INTO Course (CourseTitle, Credits) VALUES
    -> ('Mathematics', 3),
    -> ('Physics', 4),
    -> ('Chemistry', 4),
    -> ('Computer Science', 3),
    -> ('English Literature', 2);
Query OK, 5 rows affected (0.10 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Instructor Table
mysql> INSERT INTO Instructor (FirstName, LastName, Email) VALUES
    -> ('Emily', 'Clark', 'emily.clark@example.com'),
    -> ('Michael', 'Scott', 'michael.scott@example.com'),
    -> ('Sarah', 'Connor', 'sarah.connor@example.com'),
    -> ('David', 'Miller', 'david.miller@example.com'),
    -> ('Laura', 'Wilson', 'laura.wilson@example.com');
Query OK, 5 rows affected (0.29 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Enrollment Table
mysql> INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID) VALUES
    -> ('2025-01-10', 1, 1, 1),
    -> ('2025-01-12', 2, 2, 2),
    -> ('2025-01-15', 3, 3, 3),
    -> ('2025-01-18', 4, 4, 4),
    -> ('2025-01-20', 5, 5, 5);
Query OK, 5 rows affected (0.21 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Score Table
mysql> INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained) VALUES
    -> (1, 1, '2025-02-15', 3),
    -> (2, 2, '2025-02-18', 4),
    -> (3, 3, '2025-02-20', 4),
    -> (4, 4, '2025-02-22', 3),
    -> (5, 5, '2025-02-25', 2);
Query OK, 5 rows affected (0.27 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert Records into Feedback Table
mysql> INSERT INTO Feedback (StudentID, Date, InstructorName, Feedback) VALUES
    -> (1, '2025-03-01', 'Emily Clark', 'Great teaching style!'),
    -> (2, '2025-03-02', 'Michael Scott', 'Very engaging class!'),
    -> (3, '2025-03-03', 'Sarah Connor', 'Clear explanations!'),
    -> (4, '2025-03-04', 'David Miller', 'Helpful and patient!'),
    -> (5, '2025-03-05', 'Laura Wilson', 'Interesting and informative!');
Query OK, 5 rows affected (0.16 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Retrieve Data from All Tables
mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                       | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
|         1 | John      | Doe      | 2000-05-15  | Male   | john.doe@example.com        | 1234567890 |
|         2 | Jane      | Smith    | 1999-08-22  | Female | jane.smith@example.com      | 0987654321 |
|         3 | Alice     | Brown    | 2001-03-10  | Female | alice.brown@example.com     | 1122334455 |
|         4 | Bob       | Williams | 2002-06-18  | Male   | bob.williams@example.com    | 5566778899 |
|         5 | Charlie   | Johnson  | 1998-11-25  | Other  | charlie.johnson@example.com | 6677889900 | |
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+--------------------+---------+
| CourseID | CourseTitle        | Credits |
+----------+--------------------+---------+
|        1 | Mathematics        |       3 |
|        2 | Physics            |       4 |
|        3 | Chemistry          |       4 |
|        4 | Computer Science   |       3 |
|        5 | English Literature |       2 |
+----------+--------------------+---------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------+----------+---------------------------+
| InstructorID | FirstName | LastName | Email                     |
+--------------+-----------+----------+---------------------------+
|            1 | Emily     | Clark    | emily.clark@example.com   |
|            2 | Michael   | Scott    | michael.scott@example.com |
|            3 | Sarah     | Connor   | sarah.connor@example.com  |
|            4 | David     | Miller   | david.miller@example.com  |
|            5 | Laura     | Wilson   | laura.wilson@example.com  |
+--------------+-----------+----------+---------------------------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2025-01-10     |         1 |        1 |            1 |
|            2 | 2025-01-12     |         2 |        2 |            2 |
|            3 | 2025-01-15     |         3 |        3 |            3 |
|            4 | 2025-01-18     |         4 |        4 |            4 |
|            5 | 2025-01-20     |         5 |        5 |            5 |
|+--------------+----------------+-----------+----------+--------------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2025-02-15 |              3 |
|       2 |        2 |         2 | 2025-02-18 |              4 |
|       3 |        3 |         3 | 2025-02-20 |              4 |
|       4 |        4 |         4 | 2025-02-22 |              3 |
|       5 |        5 |         5 | 2025-02-25 |              2 ||
+---------+----------+-----------+------------+----------------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+----------------+------------------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback                     |
+------------+-----------+------------+----------------+------------------------------+
|          1 |         1 | 2025-03-01 | Emily Clark    | Great teaching style!        |
|          2 |         2 | 2025-03-02 | Michael Scott  | Very engaging class!         |
|          3 |         3 | 2025-03-03 | Sarah Connor   | Clear explanations!          |
|          4 |         4 | 2025-03-04 | David Miller   | Helpful and patient!         |
|          5 |         5 | 2025-03-05 | Laura Wilson   | Interesting and informative! | |
+------------+-----------+------------+----------------+------------------------------+
10 rows in set (0.00 sec)
