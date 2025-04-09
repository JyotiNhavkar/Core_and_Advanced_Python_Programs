mysql> create database Employee_Details;
mysql> --Task 1: Insert Data
mysql> use Employee_Details;
Database changed
mysql> INSERT INTO Employee (emp_id, first_name, last_name, age, email)
    -> VALUES
    -> (1, 'John', 'Doe', 28, 'john.doe@example.com'),
    -> (2, 'Jane', 'Smith', 35, 'jane.smith@example.com'),
    -> (3, 'Alice', 'Brown', 40, 'alice.brown@example.com'),
    -> (4, 'Bob', 'Johnson', 23, 'bob.johnson@example.com');
Query OK, 4 rows affected (0.36 sec)
Records: 4  Duplicates: 0  Warnings: 0
mysql> --Task 2: Retrieving Data
mysql> SELECT first_name, last_name FROM Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| Jane       | Smith     |
| Alice      | Brown     |
| Bob        | Johnson   |
+------------+-----------+
4 rows in set (0.00 sec)
mysql> --Task 3: Filtering Data
mysql> SELECT first_name, last_name, age
    -> FROM Employee
    -> WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   35 |
| Alice      | Brown     |   40 |
+------------+-----------+------+
2 rows in set (0.03 sec)
mysql> --Task 4: Updating Data
mysql> UPDATE Employee
    -> SET age = age + 1
    -> WHERE age > 25;
Query OK, 3 rows affected (0.25 sec)
Rows matched: 3  Changed: 3  Warnings: 0
mysql> SELECT*FROM Employee;
+--------+------------+-----------+------+-------------------------+
| emp_id | first_name | last_name | age  | email                   |
+--------+------------+-----------+------+-------------------------+
|      1 | John       | Doe       |   29 | john.doe@example.com    |
|      2 | Jane       | Smith     |   36 | jane.smith@example.com  |
|      3 | Alice      | Brown     |   41 | alice.brown@example.com |
|      4 | Bob        | Johnson   |   23 | bob.johnson@example.com |
+--------+------------+-----------+------+-------------------------+
4 rows in set (0.00 sec)