Last login: Tue Sep  5 11:30:20 on ttys000
➜  ~ git:(master) ✗ brew services list
Name       Status  User    Plist
mongodb    started robdark /Users/robdark/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
postgresql started robdark /Users/robdark/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
➜  ~ git:(master) ✗ createdb todolist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# create table todos(
todolist(# todoId serial primary key,
todolist(# title varchar(255) not null,
todolist(# details varchar(1000),
todolist(# priority integer default '1',
todolist(# created_at not null datetime,
todolist(# completed_at null datetime
todolist(# );
ERROR:  syntax error at or near "not"
LINE 6: created_at not null datetime,
                   ^
todolist=# create table todos(
todoId serial primary key,
title varchar(255) not null,
details varchar(1000),
priority integer default '1',
created_at datetime not null,
completed_at datetime null
);
ERROR:  type "datetime" does not exist
LINE 6: created_at datetime not null,
                   ^
todolist=# create table todos(
todoId serial primary key,
title varchar(255) not null,
details varchar(1000),
priority integer default '1',
created_at DATETIME - format: YYYY-MM-DD HH:MI:SS  not null,
completed_at DATETIME - format: YYYY-MM-DD HH:MI:SS null
);
ERROR:  syntax error at or near "-"
LINE 6: created_at DATETIME - format: YYYY-MM-DD HH:MI:SS  not null,
                            ^
todolist=# create table todos(
todoId serial primary key,
title varchar(255) not null,
details varchar(1000),
priority integer default '1',
created_at DATETIME not null,
completed_at DATETIME null
);
ERROR:  type "datetime" does not exist
LINE 6: created_at DATETIME not null,
                   ^
todolist=# create table todos(
todoId serial primary key,
title varchar(255) not null,
details varchar(1000),
priority integer default '1',
created_at DATETIME not null,
completed_at DATETIME null
);
ERROR:  type "datetime" does not exist
LINE 6: created_at DATETIME not null,
                   ^
todolist=# create table todos(
todoId serial primary key,
title varchar(255) not null,
details varchar(1000),
priority integer default '1',
created_at timestamp [ (p) ] [ without time zone ] not null,
completed_at timestamp [ (p) ] [ without time zone ] null
);
ERROR:  syntax error at or near "("
LINE 6: created_at timestamp [ (p) ] [ without time zone ] not null,
                               ^
todolist=# create table todos(
todoId serial primary key,
title varchar(255) not null,
details varchar(1000),
priority integer default '1',
created_at timestamp not null,
completed_at timestamp null
);
CREATE TABLE
todolist=# insert into todos(title,details,priority,created_at,completed_at) values('daily project',complete my project');
todolist'# select * from todos;
todolist'#
todolist'# insert into todos(title,details,priority,created_at,completed_at) values('daily project','complete my project');
todolist'# select * from todos;
todolist'# insert into todos(title,details,priority,created_at,completed_at) values('daily project','complete my project','timestamp','timestamp')
todolist'# insert into todos(title,details,priority,created_at,completed_at) values('daily project','complete my project');
todolist'# select * todos
todolist'# insert into todos(title,details,priority,created_at,completed_at) values('daily project','complete my project');
todolist'# ):
todolist'# (;
todolist'# );
todolist'# insert into todos(title,details,priority,created_at,completed_at) values('daily project','complete my project''current_timestamp');
todolist'# \dt
todolist'# ;
todolist'# ';
todolist(# );
ERROR:  syntax error at or near "my"
LINE 1: ..._at,completed_at) values('daily project',complete my project...
                                                             ^
todolist=# insert into todos(title,details,priority,created_at,completed_at) values('daily project','complete my project',current_timestamp);
ERROR:  INSERT has more target columns than expressions
LINE 1: insert into todos(title,details,priority,created_at,complete...
                                                 ^
todolist=# insert into todos(title,details,priority,created_at) values('daily project','3','complete my project',current_timestamp);
ERROR:  invalid input syntax for integer: "complete my project"
LINE 1: ...s,priority,created_at) values('daily project','3','complete ...
                                                             ^
todolist=# insert into todos(title,details,priority,created_at) values('daily project',3,'complete my project',current_timestamp);
ERROR:  invalid input syntax for integer: "complete my project"
LINE 1: ...ils,priority,created_at) values('daily project',3,'complete ...







































 todoid |      title      |         details          | priority |         created_at         | completed_at
--------+-----------------+--------------------------+----------+----------------------------+--------------
      1 | daily project   | complete my project      |        3 | 2017-09-05 13:38:17.992892 |
      2 | weekly project  | complete weekly project  |        4 | 2017-09-05 13:41:08.91126  |
      3 | monthly project | complete monthly project |        5 | 2017-09-05 13:41:43.428606 |
      4 | yearly project  | complete yearly project  |        5 | 2017-09-05 13:42:17.902113 |
      5 | yearly project  | complete yearly project  |        5 | 2017-09-05 13:44:32.143608 |
(5 rows)

...skipping...
                                                             ^
todolist=# insert into todos(title,details,priority,created_at) values('daily project','complete my project',3,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at) values('weekly project','complete weekly project',4,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at) values('monthly project','complete monthly project',5,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at) values('yearly project','complete yearly project',5,current_timestamp);
INSERT 0 1
todolist=# select * from todos
todolist-# select * from todos;
ERROR:  syntax error at or near "select"
LINE 2: select * from todos;
        ^
todolist=# \dt
        List of relations
 Schema | Name  | Type  |  Owner
--------+-------+-------+---------
 public | todos | table | robdark
(1 row)

todolist=# insert into todos(title,details,priority,created_at) values('yearly project','complete yearly project',5,current_timestamp);
INSERT 0 1
todolist=# select * from todos
todolist-# select * from todos;
ERROR:  syntax error at or near "select"


















LINE 2: select * from todos;
        ^
todolist=# select * from todos
select * from todos;
ERROR:  syntax error at or near "select"
LINE 2: select * from todos;
        ^
todolist=# select * from todos;

[1]  + 3208 suspended  psql todolist
➜  ~ git:(master) ✗ list dbs
zsh: command not found: list
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# nsert into todos(title,details,priority,created_at) values('fun  project','complete fun  project',2,current_timestamp);


















ERROR:  syntax error at or near "nsert"
LINE 1: nsert into todos(title,details,priority,created_at) values('...
        ^
todolist=# insert into todos(title,details,priority,created_at) values('yearly project','complete yearly project',5,current_timestamp);
INSERT 0 1
todolist=# select * from todos
todolist-# select * from todos
todolist-# ^Z
[2]  + 3532 suspended  psql todolist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# select * from todos  where completed_at = ''
todolist-# select * from todos where priority > 1;
ERROR:  syntax error at or near "select"
LINE 2: select * from todos where priority > 1;
        ^
todolist=# select * from todos where priority > 1;

[3]  + 3555 suspended  psql todolist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# select * from todos where completed_at = ''
todolist-# ^Z
[4]  + 3589 suspended  psql todolist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# update todos set completed_at completed_at current_timestamp where id = 2;
ERROR:  syntax error at or near "completed_at"
LINE 1: update todos set completed_at completed_at current_timestamp...
                                      ^
todolist=# select * from todos where completed_at is null;

[5]  + 3603 suspended  psql todolist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# update todos set completed_at current_timestamp where id = 2;
ERROR:  syntax error at or near "current_timestamp"
LINE 1: update todos set completed_at current_timestamp where id = 2...
                                      ^
todolist=# update todos set completed_at = current_timestamp where id = 2;
ERROR:  column "id" does not exist
LINE 1: ...ate todos set completed_at = current_timestamp where id = 2;
                                                                ^
todolist=# update todos set completed_at = current_timestamp where todoid = 2
todolist-# delete todos column completed_at < current_timestamp;
ERROR:  syntax error at or near "delete"
LINE 2: delete todos column completed_at < current_timestamp;
        ^
todolist=# delete from todos where completed_at < current_timestamp;
DELETE 0
todolist=# ^Z
[6]  + 3773 suspended  psql todolist
➜  ~ git:(master) ✗ /Users/robdark/Documents/tiy\ Back-End/todoPostgresmysql
➜  todoPostgresmysql git:(master) ✗ touch todo.sql
➜  todoPostgresmysql git:(master) ✗ atom .
➜  todoPostgresmysql git:(master) ✗
