class AiSqlJson {
  static List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "title": "Write Single-Line Comments",
      "description":
          "These start with “–”. Any text that goes after the dash and till the end of the line will not be taken into account by the compiler",
      "queries": [
        {"query": "-Update all:\nSELECT * FROM Movies;"}
      ]
    },
    {
      "id": 2,
      "title": "Write Multi-Line Comments",
      "description":
          "These start with /* and end with */. Again, any text that is beyond the slashes lines will be ignored by the compiler.",
      "queries": [
        {
          "query":
              "/*Select all the columns\nof all the records\nin the Movies table:*/\nSELECT * FROM Movies;"
        }
      ]
    },
    {
      "id": 3,
      "title": "Connect to MySQL",
      "description":
          "To start working with MySQL, you’ll need to establish an active SSH session on your server. If you didn’t set a password for your MySQL root user, you omit the -p switch.",
      "queries": [
        {"query": "mysql -u root -p"}
      ]
    },
    {
      "id": 4,
      "title": "Create a new MySQL User Account",
      "description":
          "you can create a new test user for practice. To do that, run the following command",
      "queries": [
        {"query": "CREATE USER ‘username’@’localhost’ IDENTIFIED BY ‘password’;"}
      ]
    },
    {
      "id": 5,
      "title": "Delete MySQL User Account",
      "description":
          "If you need to delete a user later on you, use this command",
      "queries": [
        {"query": "DROP USER ‘someuser’@’localhost’;"}
      ]
    },
    {
      "id": 6,
      "title": "Create a New Database",
      "description":
          "To set up a new database use this line:",
      "queries": [
        {"query": "CREATE DATABASE yourcoolname"}
      ]
    },
    {
      "id": 7,
      "title": "View all your databases",
      "description":
          "You can then view all your databases with this command:",
      "queries": [
        {"query": "mysql> show databases;"}
      ]
    },
    {
      "id": 8,
      "title": "Navigate to a particular database",
      "description":
          "You can quickly navigate to a particular database using this command",
      "queries": [
        {"query": "[root@server ~]# mysql -u root -p mydatabase < radius.sql"}
      ]
    },
    {
      "id": 9,
      "title": "Delete a MySQL Database",
      "description":
          "To get rid of a database just type",
      "queries": [
        {"query": "DROP DATABASE dbName"}
      ]
    },
    {
      "id": 10,
      "title": "Create a New Simple Table",
      "description":
          "The code snippet below features a table for a list of movies that we want to organize by different attributes:",
      "queries": [
        {"query": "CREATE TABLE movies(\ntitle VARCHAR(100),\nyear VARCHAR(100),\ndirector VARCHAR(50),\ngenre VARCHAR(20),\nrating VARCHAR(100),\n);"}
      ]
    },
    {
      "id": 11,
      "title": "View a list of all tables",
      "description":
          "Call a list of all tables associated with a database",
      "queries": [
        {"query": "show tables;"}
      ]
    },
    {
      "id": 12,
      "title": "View the columns of tables",
      "description":
          "To see the columns of your table.",
      "queries": [
        {"query": "DESCRIBE table_name;"}
      ]
    },
    {
      "id": 13,
      "title": "View information of the column in your table.",
      "description":
          "To review the information of the column in your table",
      "queries": [
        {"query": "DESCRIBE table_name column_name;"}
      ]
    },
    {
      "id": 14,
      "title": "Delete a Table",
      "description":
          "To get rid of the table specify the table name in the following command:",
      "queries": [
        {"query": "DROP TABLE tablename;"}
      ]
    },
    {
      "id": 15,
      "title": "Add New Column",
      "description":
          "To create a new column in an existing table.",
      "queries": [
        {"query": "ALTER TABLE table\nADD [COLUMN] column_name;"}
      ]
    },
    {
      "id": 16,
      "title": "Delete/Drop a Column",
      "description":
          "To delete a column of a table",
      "queries": [
        {"query": "ALTER TABLE table_name\nDROP [COLUMN] column_name;"}
      ]
    },
    {
      "id": 17,
      "title": "Insert New Row",
      "description":
          "To insert data into a table",
      "queries": [
        {"query": "INSERT INTO table_name (field1, field2, ...) VALUES (value1, value2, ...);"}
      ]
    },
    {
      "id": 18,
      "title": "Select Data from The Row",
      "description":
          "Specify what kind of information you want to retrieve from a certain row.",
      "queries": [
        {"query": "SELECT value1, value2 FROM field1;"}
      ]
    },
    {
      "id": 19,
      "title": "Add an Additional Selection Clause",
      "description":
          "Include an additional pointer that indicates what type of data do you need.",
      "queries": [
        {"query": "SELECT * FROM movies WHERE budget=’1’;"},
        {"query": "SELECT * FROM movies WHERE year=’2020’ AND rating=’9’;"}
      ]
    },
    {
      "id": 20,
      "title": "Delete a Row",
      "description":
          "Use SELECT FROM syntax and WHERE clause to specify what rows to delete.",
      "queries": [
        {"query": "DELETE FROM movies WHERE budget=’1’;"}
      ]
    },
    {
      "id": 21,
      "title": "Update All Rows",
      "description":
          "To update all rows",
      "queries": [
        {"query": "UPDATE table_name\nSET column1 = value1,\n...;"}
      ]
    },
    {
      "id": 22,
      "title": "Update data only in a specified set of rows",
      "description":
          "To update data only in a specified set of rows you can use WHERE clause:",
      "queries": [
        {"query": "UPDATE table_name\nSET column_1 = value_1,\nWHERE budget=’5’;"}
      ]
    },
    {
      "id": 23,
      "title": "Update rows with JOIN",
      "description":
          "You can also update, select or delete rows using JOIN clause. It comes particularly handy when you need to manipulate data from multiple tables in a single query",
      "queries": [
        {"query": "UPDATE table_name\nINNER JOIN table1 ON table1.column1 = table2.column2\nSET column1 = value1,\nWHERE budget=’5’;"}
      ]
    },
    {
      "id": 24,
      "title": "Edit a Column",
      "description":
          "You can alter any existing column with the following snippet:",
      "queries": [
        {"query": "ALTER TABLE movies MODIFY COLUMN number INT(3);"}
      ]
    },
    {
      "id": 25,
      "title": "Sort Entries in a Column",
      "description":
          "You can sort the data in all columns and rows the same way you do in Excel e.g. alphabetically or from ascending to descending value.",
      "queries": [
        {"query": "SELECT * FROM users ORDER BY last_name ASC;"},
        {"query": "SELECT * FROM users ORDER BY last_nameDESC;"}
      ]
    },
    {
      "id": 26,
      "title": "Search Columns",
      "description":
          "Here’s how you can quickly find the information you need using WHERE and LIKE syntax:",
      "queries": [
        {"query": "SELECT * FROM movies WHERE genre LIKE ‘com%’;"},
        {"query": "SELECT * FROM movies WHERE title LIKE ‘%a’;"},
        {"query": "SELECT * FROM movies WHERE genre NOT LIKE ‘hor%’;"}
      ]
    },
    {
      "id": 27,
      "title": "Select a Range",
      "description":
          "Or you can bring up a certain data range using the next command:",
      "queries": [
        {"query": "SELECT * FROM movies WHERE rating BETWEEN 8 AND 10;"}
      ]
    },
    {
      "id": 28,
      "title": "Concentrate Columns",
      "description":
          "You can mash-up two or more columns together with CONCAT function:",
      "queries": [
        {"query": "SELECT CONCAT(first_name, ‘ ‘, last_name) AS ‘Name’, dept FROM users;"}
      ]
    },
    {
      "id": 29,
      "title": "Create an Index",
      "description":
          "You can create a index on table as:",
      "queries": [
        {"query": "CREATE INDEX index_name\nON table_name (column1, column2, ...);"}
      ]
    },
    {
      "id": 30,
      "title": "Create a unique index",
      "description":
          "You can also create a unique index — one that enforces the uniqueness of values in one or more columns.",
      "queries": [
        {"query": "CREATE UNIQUE INDEX index_name\nON table_name(index_column_1,index_column_2,...);"}
      ]
    },
    {
      "id": 31,
      "title": "Delete an Index in MySQL",
      "description":
          "You can use the DROP command for deleting an index:",
      "queries": [
        {"query": "DROP INDEX index_name;"}
      ]
    },
    {
      "id": 32,
      "title": "Create a New View",
      "description":
          "To create a view in MySQL you can perform the code as:",
      "queries": [
        {"query": "CREATE VIEW view_name AS\nSELECT column1, column2, ...\nFROM table_name\nWHERE condition;"}
      ]
    },
    {
      "id": 33,
      "title": "Update a View",
      "description":
          "A view always displays fresh data since the database engine recreates it each time, using the view’s SQL statement. To refresh your view use the next code:",
      "queries": [
        {"query": "CREATE OR REPLACE VIEW view_name AS\nSELECT column1, column2, ...\nFROM table_name\nWHERE condition;"}
      ]
    },
    {
      "id": 34,
      "title": "Rename a View",
      "description":
          "If you are dealing with multiple views at a time, it’s best to give them distinctive names. Here’s how that done:",
      "queries": [
        {"query": "RENAME TABLE view_name TO new_view_name;"}
      ]
    },
    {
      "id": 35,
      "title": "Show All Views",
      "description":
          "To call up all current views for all tables from the database, use this snippet:",
      "queries": [
        {"query": "SHOW FULL TABLES\nWHERE table_type = ‘VIEW’;"}
      ]
    },
    {
      "id": 36,
      "title": "Delete a View",
      "description":
          "To delete a single view use the DROP command:",
      "queries": [
        {"query": "DROP VIEW [IF EXISTS] view_name;"},
        {"query": "Drop Multiple views: DROP VIEW [IF EXISTS] view1, view2, ...;"}
      ]
    },
    {
      "id": 37,
      "title": "Create a Trigger",
      "description":
          "To create a simple trigger that will pop up before or after a certain operation such as INSERT, UPDATE or DELETE, use this code:",
      "queries": [
        {"query": "CREATE TRIGGER trigger_name\n{BEFORE | AFTER} {INSERT | UPDATE| DELETE }\nON table_name FOR EACH ROW\ntrigger_body;"}
      ]
    },
    {
      "id": 38,
      "title": "Review All Triggers in Your Database",
      "description":
          "Search your database for all the active triggers using LIKE and WHERE clauses.",
      "queries": [
        {"query": "SHOW TRIGGERS\n[{FROM | IN} database_name]\n[LIKE ‘pattern’ | WHERE search_condition];"}
      ]
    },
    {
      "id": 39,
      "title": "How to Delete a Trigger",
      "description":
          "To remove a trigger, use the DROP command:",
      "queries": [
        {"query": "DROP TRIGGER [IF EXISTS] trigger_name;"}
      ]
    },
    {
      "id": 40,
      "title": "Create a Stored Procedure in MySQL",
      "description":
          "Here’s how to create a simple stored procedure with no additional parameters:",
      "queries": [
        {"query": "CREATE PROCEDURE procedure_name\nAS\nsql_statement\nGO;"},
        {"query": "CREATE PROCEDURE SelectAllMovies @Title varchar(30)\nAS\nSELECT * FROM Movies WHERE Title = @Title\nGO;"},
      ]
    },
    {
      "id": 41,
      "title": "Review All Stored Procedures",
      "description":
          "Similarly to triggers, you can review all stored procedures with LIKE and WHERE:",
      "queries": [
        {"query": "SHOW PROCEDURE STATUS\n[LIKE ‘pattern’ | WHERE search_condition];"}
      ]
    },
    {
      "id": 42,
      "title": "Delete a Stored Procedure",
      "description":
          "To get rid of a stored procedure you no longer need, use DROP:",
      "queries": [
        {"query": "DROP PROCEDURE [IF EXISTS] procedure_name;"}
      ]
    },
    {
      "id": 43,
      "title": "MIN",
      "description":
          "Find the smallest value of the selected column in your table:",
      "queries": [
        {"query": "SELECT MIN (column_name)\nFROM table_name\nWHERE condition;"}
      ]
    },
    {
      "id": 44,
      "title": "MAX",
      "description":
          "Does the opposite and returns the largest value of the selected column:",
      "queries": [
        {"query": "SELECT MAX (column_name)\nFROM table_name\nWHERE condition;"}
      ]
    },
    {
      "id": 45,
      "title": "COUNT",
      "description":
          "Call up several rows that meet the specified criteria:",
      "queries": [
        {"query": "SELECT COUNT (column_name)\nFROM table_name\nWHERE condition;"}
      ]
    },
    {
      "id": 46,
      "title": "AVG",
      "description":
          "Get the average value of a numeric column that you selected:",
      "queries": [
        {"query": "SELECT AVG (column_name)\nFROM table_name\nWHERE condition;"}
      ]
    },
    {
      "id": 47,
      "title": "SUM",
      "description":
          "Receive a total sum of a numeric column that you selected:",
      "queries": [
        {"query": "SELECT SUM(column_name)\nFROM table_name\nWHERE condition;"}
      ]
    },
    {
      "id": 48,
      "title": "Backup your database to SQL file,",
      "description":
          "Finally, don’t forget to regularly backup your progress as you are testing different commands and code snippets. There are several easy ways to do it. To backup your database to SQL file, use this code:",
      "queries": [
        {"query": "mysqldump -u Username -p dbNameYouWant > databasename_backup.sql;"}
      ]
    },
    {
      "id": 49,
      "title": "Restore your work from a SQL backup",
      "description":
          "Then, to restore your work from a SQL backup, run the following line:",
      "queries": [
        {"query": "mysql - u Username -p dbNameYouWant < databasename_backup.sql;"}
      ]
    }
  ];
}
