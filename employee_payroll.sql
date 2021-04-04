mysql> ALTER TABLE employee_payroll ADD taxable_pay DOUBLE NOT NULL AFTER deductions;
Query OK, 0 rows affected (1.40 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+---------+--------+-----------+------------+-------------+-------+---------+------------+------------+
| id | name    | gender | basic_pay | deductions | taxable_pay | Phone | address | Department | start      |
+----+---------+--------+-----------+------------+-------------+-------+---------+------------+------------+
|  2 | Mark    | M      |   2000000 |          0 |           0 |  NULL | NULL    | NULL       | 2019-11-13 |
|  3 | Charlie | M      |   3000000 |          0 |           0 |  NULL | NULL    | NULL       | 2020-05-21 |
|  4 | Bill    | M      |   1000000 |          0 |           0 |  NULL | NULL    | NULL       | 2018-01-03 |
+----+---------+--------+-----------+------------+-------------+-------+---------+------------+------------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee_payroll ADD tax DOUBLE NOT NULL AFTER taxable_pay;
Query OK, 0 rows affected (1.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee_payroll;
+----+---------+--------+-----------+------------+-------------+-----+-------+---------+------------+------------+
| id | name    | gender | basic_pay | deductions | taxable_pay | tax | Phone | address | Department | start      |
+----+---------+--------+-----------+------------+-------------+-----+-------+---------+------------+------------+
|  2 | Mark    | M      |   2000000 |          0 |           0 |   0 |  NULL | NULL    | NULL       | 2019-11-13 |
|  3 | Charlie | M      |   3000000 |          0 |           0 |   0 |  NULL | NULL    | NULL       | 2020-05-21 |
|  4 | Bill    | M      |   1000000 |          0 |           0 |   0 |  NULL | NULL    | NULL       | 2018-01-03 |
+----+---------+--------+-----------+------------+-------------+-----+-------+---------+------------+------------+
3 rows in set (0.00 sec)

mysql>  ALTER TABLE employee_payroll ADD net_pay DOUBLE NOT NULL AFTER tax;
Query OK, 0 rows affected (1.50 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql> SELECT * FROM employee_payroll;
+----+---------+--------+-----------+------------+-------------+-----+---------+-------+---------+------------+------------+
| id | name    | gender | basic_pay | deductions | taxable_pay | tax | net_pay | Phone | address | Department | start      |
+----+---------+--------+-----------+------------+-------------+-----+---------+-------+---------+------------+------------+
|  2 | Mark    | M      |   2000000 |          0 |           0 |   0 |       0 |  NULL | NULL    | NULL       | 2019-11-13 |
|  3 | Charlie | M      |   3000000 |          0 |           0 |   0 |       0 |  NULL | NULL    | NULL       | 2020-05-21 |
|  4 | Bill    | M      |   1000000 |          0 |           0 |   0 |       0 |  NULL | NULL    | NULL       | 2018-01-03 |
+----+---------+--------+-----------+------------+-------------+-----+---------+-------+---------+------------+------------+
3 rows in set (0.00 sec)

mysql>  describe employee_payroll;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int unsigned | NO   | PRI | NULL    | auto_increment |
| name        | varchar(150) | NO   |     | NULL    |                |
| gender      | char(1)      | YES  |     | NULL    |                |
| basic_pay   | double       | NO   |     | NULL    |                |
| deductions  | double       | NO   |     | NULL    |                |
| taxable_pay | double       | NO   |     | NULL    |                |
| tax         | double       | NO   |     | NULL    |                |
| net_pay     | double       | NO   |     | NULL    |                |
| Phone       | int          | YES  |     | NULL    |                |
| address     | varchar(150) | YES  |     | NULL    |                |
| Department  | char(150)    | YES  |     | NULL    |                |
| start       | date         | NO   |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
12 rows in set (0.03 sec)
