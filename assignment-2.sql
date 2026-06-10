mysql> show databases;
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

mysql>  use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from employee_details;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | shreyan shetty |           25000 |
|           2 | harsh kadam    |           30000 |
|           3 | prithvi        |           35000 |
|           4 | spriha shetty  |           40000 |
|           5 | sahil singh    |           50000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details limit 3;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | shreyan shetty |           25000 |
|           2 | harsh kadam    |           30000 |
|           3 | prithvi        |           35000 |
+-------------+----------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           1 | shreyan shetty |           25000 |
|           2 | harsh kadam    |           30000 |
+-------------+----------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           2 | harsh kadam    |           30000 |
|           3 | prithvi        |           35000 |
|           5 | sahil singh    |           50000 |
|           1 | shreyan shetty |           25000 |
|           4 | spriha shetty  |           40000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc;
+-------------+----------------+-----------------+
| employee_id | employee_name  | employee_salary |
+-------------+----------------+-----------------+
|           5 | sahil singh    |           50000 |
|           4 | spriha shetty  |           40000 |
|           3 | prithvi        |           35000 |
|           2 | harsh kadam    |           30000 |
|           1 | shreyan shetty |           25000 |
+-------------+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           5 | sahil singh   |           50000 |
|           4 | spriha shetty |           40000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| customer_id | name    | city  | email                      | phone_no   | address       | pin_code |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| c101        | shreyan | thane | shreyanshetty211@gmail.com | 7304859981 | kasarwadavali |   400615 |
| c102        | aryan   | thane | aryan301@gmail.com         | 9804857981 | kasarwadavali |   400615 |
| c103        | sahil   | thane | sahil981@gmail.com         | 9204837971 | kasarwadavali |   400615 |
| c104        | bhupi   | thane | bhupi976@gmail.com         | 7254137978 | kasarwadavali |   400615 |
| c105        | harsh   | thane | harsh976@gmail.com         | 6212177973 | kasarwadavali |   400615 |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
5 rows in set (0.01 sec)

mysql> select distinct city from customer;
+-------+
| city  |
+-------+
| thane |
+-------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_id between 'c01' and 'c03';
Empty set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       30 |      350000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c104        | p104       |       20 |      400000 | gpay         | 2026-06-06 00:00:00 | shipped      |
|      104 | c105        | p105       |      270 |      670000 | gpay         | 2026-06-06 00:00:00 | shipped      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.01 sec)

mysql> select * from order_details where order_date between '2026-06-05' and '2026-06-06';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       30 |      350000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c104        | p104       |       20 |      400000 | gpay         | 2026-06-06 00:00:00 | shipped      |
|      104 | c105        | p105       |      270 |      670000 | gpay         | 2026-06-06 00:00:00 | shipped      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-06-05' and '2026-06-06';
Empty set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-06-05' and '2026-06-06';
Empty set (0.00 sec)

mysql>  select * from order_details where order_date not between '2026-06-06' and '2026-06-06';
Empty set (0.00 sec)

mysql>  select * from order_details where order_date between '2026-06-06' and '2026-06-06';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       30 |      350000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c104        | p104       |       20 |      400000 | gpay         | 2026-06-06 00:00:00 | shipped      |
|      104 | c105        | p105       |      270 |      670000 | gpay         | 2026-06-06 00:00:00 | shipped      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from customer ;
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| customer_id | name    | city  | email                      | phone_no   | address       | pin_code |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| c101        | shreyan | thane | shreyanshetty211@gmail.com | 7304859981 | kasarwadavali |   400615 |
| c102        | aryan   | thane | aryan301@gmail.com         | 9804857981 | kasarwadavali |   400615 |
| c103        | sahil   | thane | sahil981@gmail.com         | 9204837971 | kasarwadavali |   400615 |
| c104        | bhupi   | thane | bhupi976@gmail.com         | 7254137978 | kasarwadavali |   400615 |
| c105        | harsh   | thane | harsh976@gmail.com         | 6212177973 | kasarwadavali |   400615 |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c01','c03','c04');
Empty set (0.00 sec)

mysql>  select * from customer where customer_id in('c101','c103','c104');
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| customer_id | name    | city  | email                      | phone_no   | address       | pin_code |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| c101        | shreyan | thane | shreyanshetty211@gmail.com | 7304859981 | kasarwadavali |   400615 |
| c103        | sahil   | thane | sahil981@gmail.com         | 9204837971 | kasarwadavali |   400615 |
| c104        | bhupi   | thane | bhupi976@gmail.com         | 7254137978 | kasarwadavali |   400615 |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not  null;
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| customer_id | name    | city  | email                      | phone_no   | address       | pin_code |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
| c101        | shreyan | thane | shreyanshetty211@gmail.com | 7304859981 | kasarwadavali |   400615 |
| c102        | aryan   | thane | aryan301@gmail.com         | 9804857981 | kasarwadavali |   400615 |
| c103        | sahil   | thane | sahil981@gmail.com         | 9204837971 | kasarwadavali |   400615 |
| c104        | bhupi   | thane | bhupi976@gmail.com         | 7254137978 | kasarwadavali |   400615 |
| c105        | harsh   | thane | harsh976@gmail.com         | 6212177973 | kasarwadavali |   400615 |
+-------------+---------+-------+----------------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           5 | sahil singh   |           50000 |
|           4 | spriha shetty |           40000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)