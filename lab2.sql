/* Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. */


mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| bankaccount             |
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.01 sec)

mysql> use bankaccount;
Database changed
mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rahul Sharma        |        50000.00 |
|        102 | Priya Patel         |        25000.00 |
|        103 | Amit Kumar          |        60000.00 |
|        104 | Sneha Singh         |        30000.00 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> DELETE FROM BankAccount;
Query OK, 4 rows affected (0.01 sec)

mysql> INSERT INTO BankAccount VALUES
    -> (101,'Shreyan Shetty',10000),
    -> (102,'Sriha Shetty',25000),
    -> (103,'Harsh Kadam',60000),
    -> (104,'Prithvi',40000),
    -> (105,'Sahil Singh',50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Shreyan Shetty      |        10000.00 |
| Sriha Shetty        |        25000.00 |
| Harsh Kadam         |        60000.00 |
| Prithvi             |        40000.00 |
| Sahil Singh         |        50000.00 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Harsh Kadam         |        60000.00 |
| Prithvi             |        40000.00 |
| Sahil Singh         |        50000.00 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> UPDATE BankAccount
    -> SET account_balance = 20000
    -> WHERE account_id = 101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Shreyan Shetty      |        20000.00 |
|        102 | Sriha Shetty        |        25000.00 |
|        103 | Harsh Kadam         |        60000.00 |
|        104 | Prithvi             |        40000.00 |
|        105 | Sahil Singh         |        50000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)