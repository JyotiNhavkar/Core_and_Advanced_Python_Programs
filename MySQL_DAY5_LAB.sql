mysql> --Lab1:Retrive student information & display result in ascending order by last name Using ORDER BY clause in ascending order
mysql> create database Student;
Query OK, 1 row affected (0.48 sec)

mysql> use Student;
Database changed
mysql> create table stud(stud_id INT NOT NULL,firstname varchar(50) NOT NULL,lastname varchar(50) NOT NULL,gender varchar(20) NOT NULL,age INT NOT NULL,address varchar(50) NOT NULL, Phoneno double NOT NULL);
Query OK, 0 rows affected (1.70 sec)
mysql> desc stud;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   |     | NULL    |       |
| firstname | varchar(50) | NO   |     | NULL    |       |
| lastname  | varchar(50) | NO   |     | NULL    |       |
| gender    | varchar(20) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| address   | varchar(50) | NO   |     | NULL    |       |
| Phoneno   | double      | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
mysql> insert into stud values(101,'Jyoti','Nhavkar','Female',23,'Chakan',8421299559),(102,'Asmita','Pande','Female',25,'Chakan',8621269559),(103,'pradip','daundkar','Male',40,'Shelpimpalgaon',8421299345),(104,'Ajay','Birdawade','Male',30,'Ranubaimala',8423499559),(105,'Kshitija','Jadhav','Female',37,'Waki',8671299559);
Query OK, 5 rows affected (0.34 sec)
Records: 5  Duplicates: 0  Warnings: 0
mysql> SELECT * FROM stud;
+---------+-----------+-----------+--------+-----+----------------+------------+
| stud_id | firstname | lastname  | gender | age | address        | Phoneno    |
+---------+-----------+-----------+--------+-----+----------------+------------+
|     101 | Jyoti     | Nhavkar   | Female |  23 | Chakan         | 8421299559 |
|     102 | Asmita    | Pande     | Female |  25 | Chakan         | 8621269559 |
|     103 | pradip    | daundkar  | Male   |  40 | Shelpimpalgaon | 8421299345 |
|     104 | Ajay      | Birdawade | Male   |  30 | Ranubaimala    | 8423499559 |
|     105 | Kshitija  | Jadhav    | Female |  37 | Waki           | 8671299559 |
+---------+-----------+-----------+--------+-----+----------------+------------+
5 rows in set (0.00 sec)
mysql> SELECT * FROM stud ORDER BY lastname ASC;
+---------+-----------+-----------+--------+-----+----------------+------------+
| stud_id | firstname | lastname  | gender | age | address        | Phoneno    |
+---------+-----------+-----------+--------+-----+----------------+------------+
|     104 | Ajay      | Birdawade | Male   |  30 | Ranubaimala    | 8423499559 |
|     103 | pradip    | daundkar  | Male   |  40 | Shelpimpalgaon | 8421299345 |
|     105 | Kshitija  | Jadhav    | Female |  37 | Waki           | 8671299559 |
|     101 | Jyoti     | Nhavkar   | Female |  23 | Chakan         | 8421299559 |
|     102 | Asmita    | Pande     | Female |  25 | Chakan         | 8621269559 |
+---------+-----------+-----------+--------+-----+----------------+------------+
5 rows in set (0.00 sec)

mysql> --Lab2:count the number of student based on their gender using GROUP BY clause and count() function

mysql> SELECT gender,COUNT(*) As Student_count FROM stud GROUP BY gender;
+--------+---------------+
| gender | Student_count |
+--------+---------------+
| Female |             3 |
| Male   |             2 |
+--------+---------------+
2 rows in set (0.00 sec)



