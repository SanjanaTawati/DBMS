mysql> use anp_do453;
Database changed
mysql> create table empl(id varchar(20) not null primary key,
    -> name varchar(20) not null,
    -> mobileno varchar(20) not null,
    -> address varchar(40) not null,
    -> salary double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO empl (id, name, mobileno, address, salary)
    -> VALUES
    -> (1, 'A', '9876543210', 'Mumbai, India', 55000.00),
    -> (2, 'B', '8765432109', 'Delhi, India', 60000.00),
    -> (3, 'C', '7654321098', 'Bangalore, India', 48000.00),
    -> (4, 'D', '6543210987', 'Pune, India', 52000.00),
    -> (5, 'E', '5432109876', 'Chennai, India', 58000.00);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc empl;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | varchar(20) | NO   | PRI | NULL    |       |
| name     | varchar(20) | NO   |     | NULL    |       |
| mobileno | varchar(20) | NO   |     | NULL    |       |
| address  | varchar(40) | NO   |     | NULL    |       |
| salary   | double      | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> DELETE FROM empl WHERE id = 3;
Query OK, 1 row affected (0.01 sec)

mysql> desc empl;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | varchar(20) | NO   | PRI | NULL    |       |
| name     | varchar(20) | NO   |     | NULL    |       |
| mobileno | varchar(20) | NO   |     | NULL    |       |
| address  | varchar(40) | NO   |     | NULL    |       |
| salary   | double      | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from empl;
+----+------+------------+----------------+--------+
| id | name | mobileno   | address        | salary |
+----+------+------------+----------------+--------+
| 1  | A    | 9876543210 | Mumbai, India  |  55000 |
| 2  | B    | 8765432109 | Delhi, India   |  60000 |
| 4  | D    | 6543210987 | Pune, India    |  52000 |
| 5  | E    | 5432109876 | Chennai, India |  58000 |
+----+------+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> UPDATE empl
    -> SET salary = 65000.00
    -> WHERE id = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from empl;
+----+------+------------+----------------+--------+
| id | name | mobileno   | address        | salary |
+----+------+------------+----------------+--------+
| 1  | A    | 9876543210 | Mumbai, India  |  55000 |
| 2  | B    | 8765432109 | Delhi, India   |  65000 |
| 4  | D    | 6543210987 | Pune, India    |  52000 |
| 5  | E    | 5432109876 | Chennai, India |  58000 |
+----+------+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> select * from empl where address LIKE 'M%';
+----+------+------------+---------------+--------+
| id | name | mobileno   | address       | salary |
+----+------+------------+---------------+--------+
| 1  | A    | 9876543210 | Mumbai, India |  55000 |
+----+------+------------+---------------+--------+
1 row in set (0.00 sec)

mysql> select * from empl where address LIKE 'C______';
Empty set (0.00 sec)

mysql> select * from empl where address LIKE 'D____';
Empty set (0.00 sec)

mysql> UPDATE empl
    -> SET name = 'Sanjana'
    -> WHERE name = 'A';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from empl;
+----+---------+------------+----------------+--------+
| id | name    | mobileno   | address        | salary |
+----+---------+------------+----------------+--------+
| 1  | Sanjana | 9876543210 | Mumbai, India  |  55000 |
| 2  | B       | 8765432109 | Delhi, India   |  65000 |
| 4  | D       | 6543210987 | Pune, India    |  52000 |
| 5  | E       | 5432109876 | Chennai, India |  58000 |
+----+---------+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM empl WHERE name LIKE 'S______';
+----+---------+------------+---------------+--------+
| id | name    | mobileno   | address       | salary |
+----+---------+------------+---------------+--------+
| 1  | Sanjana | 9876543210 | Mumbai, India |  55000 |
+----+---------+------------+---------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM empl WHERE salary > 50000;
+----+---------+------------+----------------+--------+
| id | name    | mobileno   | address        | salary |
+----+---------+------------+----------------+--------+
| 1  | Sanjana | 9876543210 | Mumbai, India  |  55000 |
| 2  | B       | 8765432109 | Delhi, India   |  65000 |
| 4  | D       | 6543210987 | Pune, India    |  52000 |
| 5  | E       | 5432109876 | Chennai, India |  58000 |
+----+---------+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> select * from empl where name LIKE '%ana%';
+----+---------+------------+---------------+--------+
| id | name    | mobileno   | address       | salary |
+----+---------+------------+---------------+--------+
| 1  | Sanjana | 9876543210 | Mumbai, India |  55000 |
+----+---------+------------+---------------+--------+
1 row in set (0.00 sec)

mysql> select * from empl where name LIKE '%a';
+----+---------+------------+---------------+--------+
| id | name    | mobileno   | address       | salary |
+----+---------+------------+---------------+--------+
| 1  | Sanjana | 9876543210 | Mumbai, India |  55000 |
+----+---------+------------+---------------+--------+
1 row in set (0.00 sec)

mysql> select * from empl;
+----+---------+------------+----------------+--------+
| id | name    | mobileno   | address        | salary |
+----+---------+------------+----------------+--------+
| 1  | Sanjana | 9876543210 | Mumbai, India  |  55000 |
| 2  | B       | 8765432109 | Delhi, India   |  65000 |
| 4  | D       | 6543210987 | Pune, India    |  52000 |
| 5  | E       | 5432109876 | Chennai, India |  58000 |
+----+---------+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> DELETE FROM empl WHERE id = 5;
Query OK, 1 row affected (0.01 sec)

mysql> select * from empl;
+----+---------+------------+---------------+--------+
| id | name    | mobileno   | address       | salary |
+----+---------+------------+---------------+--------+
| 1  | Sanjana | 9876543210 | Mumbai, India |  55000 |
| 2  | B       | 8765432109 | Delhi, India  |  65000 |
| 4  | D       | 6543210987 | Pune, India   |  52000 |
+----+---------+------------+---------------+--------+
3 rows in set (0.00 sec)
