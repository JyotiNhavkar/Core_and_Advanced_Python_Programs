mysql> use employee_details;
Database changed
mysql> CREATE TABLE departments (
    ->     department_id INT PRIMARY KEY,
    ->     department_name VARCHAR(100) NOT NULL
    -> );
Query OK, 0 rows affected (1.73 sec)

mysql>
mysql> CREATE TABLE employees (
    ->     employee_id INT PRIMARY KEY,
    ->     employee_name VARCHAR(100) NOT NULL,
    ->     department_id INT,
    ->     FOREIGN KEY (department_id) REFERENCES departments(department_id)
    -> );
Query OK, 0 rows affected (1.90 sec)

mysql> INSERT INTO departments (department_id, department_name) VALUES
    -> (1, 'HR'),
    -> (2, 'IT'),
    -> (3, 'Finance');
Query OK, 3 rows affected (2.25 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO employees (employee_id, employee_name, department_id) VALUES
    -> (101, 'Alice', 1),
    -> (102, 'Bob', 2),
    -> (103, 'Charlie', 3),
    -> (104, 'David', NULL);  -- This employee has no department
Query OK, 4 rows affected (0.18 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> --Scenario 1: INNER JOIN (Employees with their Department Names)
mysql> SELECT employees.employee_name, departments.department_name
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Alice         | HR              |
| Bob           | IT              |
| Charlie       | Finance         |
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> --Scenario 2: LEFT JOIN (All Employees with their Department Names)
mysql> SELECT employees.employee_name, COALESCE(departments.department_name, 'No Department') AS department_name
    -> FROM employees
    -> LEFT JOIN departments ON employees.department_id = departments.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Alice         | HR              |
| Bob           | IT              |
| Charlie       | Finance         |
| David         | No Department   |
+---------------+-----------------+
4 rows in set (0.07 sec)