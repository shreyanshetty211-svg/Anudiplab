mysql>  show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> create table employee(employee_id int(10) not null primary key, employee_name varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| salary        | double      | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(01,'shreyan shetty',25000),(02,'harsh kadam',30000),(03,'prithvi',35000),(04,'spriha shetty',40000),(05,'sahil singh',50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+----------------+--------+
| employee_id | employee_name  | salary |
+-------------+----------------+--------+
|           1 | shreyan shetty |  25000 |
|           2 | harsh kadam    |  30000 |
|           3 | prithvi        |  35000 |
|           4 | spriha shetty  |  40000 |
|           5 | sahil singh    |  50000 |
+-------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=50000 where employee_id=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------------+----------------+--------+
| employee_id | employee_name  | salary |
+-------------+----------------+--------+
|           1 | shreyan shetty |  50000 |
|           2 | harsh kadam    |  30000 |
|           3 | prithvi        |  35000 |
|           4 | spriha shetty  |  40000 |
|           5 | sahil singh    |  50000 |
+-------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employee_name='chitti K' where employee_id=2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------------+----------------+--------+
| employee_id | employee_name  | salary |
+-------------+----------------+--------+
|           1 | shreyan shetty |  50000 |
|           2 | chitti K       |  30000 |
|           3 | prithvi        |  35000 |
|           4 | spriha shetty  |  40000 |
|           5 | sahil singh    |  50000 |
+-------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where employee_id=3;
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+-------------+----------------+--------+
| employee_id | employee_name  | salary |
+-------------+----------------+--------+
|           1 | shreyan shetty |  50000 |
|           2 | chitti K       |  30000 |
|           4 | spriha shetty  |  40000 |
|           5 | sahil singh    |  50000 |
+-------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.00 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> insert into employee values(01,'shreyan shetty',25000),(02,'harsh kadam',30000),(03,'prithvi',35000),(04,'spriha shetty',40000),(05,'sahil singh',50000);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+----------------+--------+
| employee_id | employee_name  | salary |
+-------------+----------------+--------+
|           1 | shreyan shetty |  25000 |
|           2 | harsh kadam    |  30000 |
|           3 | prithvi        |  35000 |
|           4 | spriha shetty  |  40000 |
|           5 | sahil singh    |  50000 |
+-------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| salary        | double      | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.02 sec)

mysql> create table employee(employee_id int(10) not null primary key, employee_name varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> insert into employee values(01,'shreyan shetty',25000),(02,'harsh kadam',30000),(03,'prithvi',35000),(04,'spriha shetty',40000),(05,'sahil singh',50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> alter table employee add email varchar(50) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| salary        | double      | NO   |     | NULL    |       |
| email         | varchar(50) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify employee_name varchar(100) not null;
Query OK, 5 rows affected (0.05 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
| email         | varchar(50)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>  Alter table employee drop column email;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to employee_salary;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   | PRI | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.01 sec)

mysql> desc employee_details;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   | PRI | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.05 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>  desc employee_details;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   |     | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details add constraint primary key(employee_id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   | PRI | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)