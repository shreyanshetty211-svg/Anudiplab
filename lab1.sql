/*     
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */
mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.04 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table student(StudentID varchar(10) not null primary key,Name varchar(30) not null,Age int not null,Address varchar(50) not null);
Query OK, 0 rows affected (0.15 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | varchar(10) | NO   | PRI | NULL    |       |
| Name      | varchar(30) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student values('STD1','shreyan shetty',21,'kasawadavali thane'),('STD2','vihaan shetty',13,'Kasarwadavali thane'),('STD3','arnav latte',19,'manpada thane'),('STD4','sahil singh',21,'patlipada Thane'),('STD5','Deepika Mittapelli',20,'Dhamankar Naka Bhiwandi');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> Select * from student;
+-----------+--------------------+-----+-------------------------+
| StudentID | Name               | Age | Address                 |
+-----------+--------------------+-----+-------------------------+
| STD1      | shreyan shetty     |  21 | kasawadavali thane      |
| STD2      | vihaan shetty      |  13 | Kasarwadavali thane     |
| STD3      | arnav latte        |  19 | manpada thane           |
| STD4      | sahil singh        |  21 | patlipada Thane         |
| STD5      | Deepika Mittapelli |  20 | Dhamankar Naka Bhiwandi |
+-----------+--------------------+-----+-------------------------+
5 rows in set (0.00 sec)

mysql> create table Feedback(FeedbackID varchar(10) not null primary key,StudentID varchar(10) not null,Date datetime not null,InstructorName varchar(30) not null,Feedback varchar(50) not null,foreign key(StudentID) references student(StudentID));
Query OK, 0 rows affected (0.02 sec)

mysql> desc Feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| FeedbackID     | varchar(10) | NO   | PRI | NULL    |       |
| StudentID      | varchar(10) | NO   | MUL | NULL    |       |
| Date           | datetime    | NO   |     | NULL    |       |
| InstructorName | varchar(30) | NO   |     | NULL    |       |
| Feedback       | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into Feedback values('FD01','STD1','2026-06-08','Arzoo Ansari Mam','Good presentation.'),('FD02','STD2','2026-06-08','Swapnil sir','Good learning experience.'),('FD03','STD3','2026-06-08','Rajshri Thete Mam','Well explained.'),('FD04','STD4','2026-06-08','Arvind Choudhary Sir','Very informative.'),('FD05','STD5','2026-06-08','Nusrat Ansari
    '> Mam','Great session.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>  select * from Feedback;
+------------+-----------+---------------------+----------------------+---------------------------+
| FeedbackID | StudentID | Date                | InstructorName       | Feedback                  |
+------------+-----------+---------------------+----------------------+---------------------------+
| FD01       | STD1      | 2026-06-08 00:00:00 | Arzoo Ansari Mam     | Good presentation.        |
| FD02       | STD2      | 2026-06-08 00:00:00 | Swapnil sir          | Good learning experience. |
| FD03       | STD3      | 2026-06-08 00:00:00 | Rajshri Thete Mam    | Well explained.           |
| FD04       | STD4      | 2026-06-08 00:00:00 | Arvind Choudhary Sir | Very informative.         |
| FD05       | STD5      | 2026-06-08 00:00:00 | Nusrat Ansari
Mam    | Great session.            |
+------------+-----------+---------------------+----------------------+---------------------------+
5 rows in set (0.00 sec)