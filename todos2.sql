➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.





































todolist=# insert into todos(title,details,priority,created_at) values('daily project','complete my project',3,current_timestamp);
INSERT 0 1
todolist=# into todos(title,details,priority,created_at) values('wash dishes','make dishes cleaner',4,current_timestamp);
ERROR:  syntax error at or near "into"
LINE 1: into todos(title,details,priority,created_at) values('wash d..












.
        ^
todolist=# insert into todos(title,details,priority,created_at) values('wash dishes','make dishes cleaner',5,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at) values('exercise','ride bike',3,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at) values('make dinner','spaghetti',1,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at,completed_at) values('do homework','algebra equations',4,current_timestamp,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at,completed_at) values('drive home in traffic','fight the madness',5,current_timestamp,current_timestamp);
INSERT 0 1






























todolist=# insert into todos(title,details,priority,created_at) values('finish robot project','figure out mongoose auth',1,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at,completed_at) values('trip to arkansas','need to map route',3,current_timestamp,current_timestamp);
INSERT 0 1
todolist=# insert into todos(title,details,priority,created_at) values('go to gym','chest and back workout',4,current_timestamp);
INSERT 0 1
todolist=# select * from todos;

[16]  + 10040 suspended  psql todolist






























➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# select * from todos where completed_at is null and priority = 3;

[17]  + 10096 suspended  psql todolist
➜  ~ git:(master) ✗ select * from  todos where completed_at is null and order by priority;
zsh: parse error near `*'
➜  ~ git:(master) ✗ select * from todos where completed_at is null and order by priority;
zsh: parse error near `*'
➜  ~ git:(master) ✗ select * from todos where completed_at is null order by priority;
zsh: parse error near `*'
➜  ~ git:(master) ✗ psql todos
psql: FATAL:  database "todos" does not exist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.









todolist=# select * from todos where completed_at is null order by priority;

[18]  + 10178 suspended  psql todolist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# select * from todos completed_at is null order by priority,created_at desc;
ERROR:  syntax error at or near "is"
LINE 1: select * from todos completed_at is null order by priority,c...
                                         ^
todolist=# select * from todos where completed_at is null order by priority,created_at desc;

[19]  + 10191 suspended  psql todolist
➜  ~ git:(master) ✗ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# select min priority and min created_at;
ERROR:  syntax error at or near "and"
LINE 1: select min priority and min created_at;
                            ^
todolist=# select max priority and min created_at;
ERROR:  syntax error at or near "and"
LINE 1: select max priority and min created_at;
                            ^
todolist=# SELECT * FROM todos WHERE priority = 1 ORDER BY create_at LIMIT 1;
ERROR:  column "create_at" does not exist
LINE 1: SELECT * FROM todos WHERE priority = 1 ORDER BY create_at LI...
                                                        ^
HINT:  Perhaps you meant to reference the column "todos.created_at".
todolist=# SELECT * FROM todos WHERE priority = 1 ORDER BY created_at LIMIT 1;

[20]  + 10209 suspended  psql todolist
