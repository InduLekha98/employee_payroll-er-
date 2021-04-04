mysql> ALTER TABLE employee_payroll ADD phone VARCHAR(19) AFTER salary;
Query OK, 0 rows affected (1.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+---------+--------+---------+-------+-----------+
| id | name    | gender | salary  | Phone | start     |
+----+---------+--------+---------+-------+-----------+
|  2 | Mark    | M      | 2000000 |  NULL |2019-11-13 |
|  3 | Charlie | M      | 3000000 |  NULL | 2020-05-21|
|  4 | Bill    | M      | 1000000 |  NULL | 2018-01-03|
+----+---------+--------+---------+-------+-----------+
3 rows in set (0.00 sec)


mysql> ALTER TABLE employee_payroll ADD address VARCHAR(150) AFTER Phone;
Query OK, 0 rows affected (1.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+---------+--------+---------+-------+---------+------------+
| id | name    | gender | salary  | Phone | address | start      |
+----+---------+--------+---------+-------+---------+------------+
|  2 | Mark    | M      | 2000000 |  NULL | NULL    | 2019-11-13 |
|  3 | Charlie | M      | 3000000 |  NULL | NULL    | 2020-05-21 |
|  4 | Bill    | M      | 1000000 |  NULL | NULL    | 2018-01-03 |
+----+---------+--------+---------+-------+---------+------------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee_payroll ADD Department CHAR(150) AFTER address;
Query OK, 0 rows affected (1.58 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+---------+--------+---------+-------+---------+------------+------------+
| id | name    | gender | salary  | Phone | address | Department | start      |
+----+---------+--------+---------+-------+---------+------------+------------+
|  2 | Mark    | M      | 2000000 |  NULL | NULL    | NULL       | 2019-11-13 |
|  3 | Charlie | M      | 3000000 |  NULL | NULL    | NULL       | 2020-05-21 |
|  4 | Bill    | M      | 1000000 |  NULL | NULL    | NULL       | 2018-01-03 |
+----+---------+--------+---------+-------+---------+------------+------------+
3 rows in set (0.00 sec)

mysql> describe employee_payroll;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int unsigned | NO   | PRI | NULL    | auto_increment |
| name       | varchar(150) | NO   |     | NULL    |                |
| gender     | char(1)      | YES  |     | NULL    |                |
| salary     | double       | NO   |     | NULL    |                |
| Phone      | int          | YES  |     | NULL    |                |
| address    | varchar(150) | YES  |     | NULL    |                |
| Department | char(150)    | YES  |     | NULL    |                |
| start      | date         | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
8 rows in set (0.03 sec)


