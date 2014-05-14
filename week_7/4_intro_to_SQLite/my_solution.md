# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->
```
absarora:~ absarora$ sqlite3 dummy.db
-- Loading resources from /Users/absarora/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
```

## Release 1: Insert Data 
<!-- paste your terminal output here -->
```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 23:07:14  2014-05-13 23:07:14
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Ajay', 'Singh', 'absingharora@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 23:07:14  2014-05-13 23:07:14
2           Ajay        Singh       absingharora@gmail.co  2014-05-13 23:12:11  2014-05-13 23:12:11
sqlite> 
```

## Release 2: Multi-line commands
<!-- paste your terminal output here -->
```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
```

`Error: column email is not unique`
```
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 23:07:14  2014-05-13 23:07:14
2           Ajay        Singh       absingharora@gmail.co  2014-05-13 23:12:11  2014-05-13 23:12:11
```
```
sqlite> SELECT * FROM users
   ...> WHERE last_name = 'Lin';
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 23:07:14  2014-05-13 23:07:14
```

## Release 3: Add a column
<!-- paste your terminal output here -->
```
sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
```
```
sqlite> ALTER TABLE users ADD nickname VARCHAR(64);
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 23:07:14  2014-05-13 23:07:14            
2           Ajay        Singh       absingharora@gmail.co  2014-05-13 23:12:11  2014-05-13 23:12:11
```
```
sqlite> UPDATE users SET nickname='Kimchee' WHERE id=1;
sqlite> UPDATE users SET nickname='Aj' WHERE id=2;

sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 23:07:14  2014-05-13 23:07:14  Kimchee   
2           Ajay        Singh       absingharora@gmail.co  2014-05-13 23:12:11  2014-05-13 23:12:11  Aj        
```

## Release 4: Change a value
<!-- paste your terminal output here -->
```
sqlite> UPDATE users SET first_name='Kimmy', nickname='Ninja Coder', updated_at=DATE('now') WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at  nickname   
----------  ----------  ----------  ---------------------  -------------------  ----------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-13 23:07:14  2014-05-14  Ninja Coder
2           Ajay        Singh       absingharora@gmail.co  2014-05-13 23:12:11  2014-05-13  Aj
```

## Release 5: Reflect
<!-- Add your reflection here -->
```
I had an issue adding a column to my table; otherwise, the link provided was a great help understanding
as how to insert, create, and update data.
```
