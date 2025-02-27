-- Create the database
mysql> create database BankAccount;
Query OK, 1 row affected (0.01 sec)
-- Select the database for use
mysql> use BankAccount;
Database changed
-- Create the table BankAccountTable
mysql> CREATE TABLE BankAccountTable(account_id INT NOT NULL PRIMARY KEY,     -- Primary key to uniquely identify each account
    ->  account_holder_name VARCHAR(100) NOT NULL,                            -- Name of the account holder
    -> account_balance DOUBLE NOT NULL);                                      -- Balance in the account, stored as a double
Query OK, 0 rows affected (0.05 sec)
--   Task 1: Insert data into the BankAccountTable
mysql> INSERT INTO BankAccountTable(account_id, account_holder_name, account_balance)VALUES(101, 'Sanjana', 50000.75),
    -> (102, 'Priyanka', 40000.25),
    -> (103, 'Aditi', 40000.25),
    -> (104, 'Shruti', 35000.00),
    -> (105, 'Sam', 20000.99);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0
--  Retrieve all records from BankAccountTable
mysql> select * from BankAccountTable;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Sanjana             |        50000.75 |
|        102 | Priyanka            |        40000.25 |
|        103 | Aditi               |        40000.25 |
|        104 | Shruti              |           35000 |
|        105 | Sam                 |        20000.99 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
-- Task 2: Retrieve only account_holder_name and account_balance
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccountTable;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Sanjana             |        50000.75 |
| Priyanka            |        40000.25 |
| Aditi               |        40000.25 |
| Shruti              |           35000 |
| Sam                 |        20000.99 |
+---------------------+-----------------+
5 rows in set (0.00 sec)
-- Task 3 Retrieve account holders with a balance greater than 30,000
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccountTable
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Sanjana             |        50000.75 |
| Priyanka            |        40000.25 |
| Aditi               |        40000.25 |
| Shruti              |           35000 |
+---------------------+-----------------+
4 rows in set (0.00 sec)
-- Task 4: Update the account_balance of the account holder with account_id = 101
mysql> UPDATE BankAccountTable
    -> SET account_balance = 60000.88
    -> WHERE account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccountTable;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Sanjana             |        60000.88 |
|        102 | Priyanka            |        40000.25 |
|        103 | Aditi               |        40000.25 |
|        104 | Shruti              |           35000 |
|        105 | Sam                 |        20000.99 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)