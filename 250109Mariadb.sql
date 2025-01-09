Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.6.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> exit
Bye

C:\Program Files\MariaDB 10.6\bin>mysql -u root -p
Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 6
Server version: 10.6.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> mysql --version
    ->
    -> Bye
Ctrl-C -- exit!

C:\Program Files\MariaDB 10.6\bin>mysql --version
mysql  Ver 15.1 Distrib 10.6.20-MariaDB, for Win64 (AMD64), source revision f00711bba2cd383825d0be1867f7d7d7f641c9e4

C:\Program Files\MariaDB 10.6\bin>mysql -u root -p
Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 7
Server version: 10.6.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.028 sec)

MariaDB [(none)]> create database {school_db} character set utf8mb4 collate utf8mb4_unicode_ci;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '{school_db} character set utf8mb4 collate utf8mb4_unicode_ci' at line 1
MariaDB [(none)]> CREATE DATABASE {school_db} CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '{school_db} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci' at line 1
MariaDB [(none)]> create database school_db character set utf8mb4 collate utf8mb4_unicode_ci;
Query OK, 1 row affected (0.004 sec)

MariaDB [(none)]> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DATABASE' at line 1
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| school_db          |
| sys                |
+--------------------+
5 rows in set (0.001 sec)

MariaDB [(none)]> USE school_db;
Database changed
MariaDB [school_db]> DROP DATABASE school_db;
Query OK, 0 rows affected (0.041 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.001 sec)

MariaDB [(none)]> CREATE DATABASE {school_db} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '{school_db} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci' at line 1
MariaDB [(none)]> CREATE DATABASE school_db CHARACTER SET utf8mb4 CO
LLATE utf8mb4_unicode_ci;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| school_db          |
| sys                |
+--------------------+
5 rows in set (0.001 sec)

MariaDB [(none)]> USE school_db;
Database changed
MariaDB [school_db]> CREATE USER junhyukrim@gmail.com IDENTIFIED BY
'junhyukrim';
Query OK, 0 rows affected (0.005 sec)

MariaDB [school_db]> GRANT ALL PRIVILEGES ON school_db.* TO junhyukr
im@gmail.com;
Query OK, 0 rows affected (0.003 sec)

MariaDB [school_db]> Bye
Ctrl-C -- exit!

C:\Program Files\MariaDB 10.6\bin>mysql -u junhyukrim@gmail.com -p
Enter password: **********
ERROR 1045 (28000): Access denied for user 'junhyukrim@gmail.com'@'localhost' (using password: YES)

C:\Program Files\MariaDB 10.6\bin>mysql -u root -p
Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.6.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> DROP USER junhyukrim@gmail.com
    -> ;
Query OK, 0 rows affected (0.002 sec)

MariaDB [(none)]> USE school_db;
Database changed
MariaDB [school_db]> CREATE TABLE students(studentID int, LastName v
archar(255), FirstName varchar(255), Address varchar(255), City varc
har(255));
Query OK, 0 rows affected (0.012 sec)

MariaDB [school_db]>


--  실습 : 아래의 테이블을 두개 만들어주세요

CREATE TABLE students(
    studentID int NOT NULL AUTO_INCREMENT
    NAME varchar(64)
    Age tinyint
    Address varchar(64)
    PRIMARY KEY (studentID)
);

CREATE TABLE grades(
    studentID int
    math tinyint
    english tinyint
    Science tinyint
);