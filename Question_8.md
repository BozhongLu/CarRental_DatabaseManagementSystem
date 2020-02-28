```sql
ALTER TABLE member
    ADD CHECK (length(password)>=6);
sql> ALTER TABLE member
         ADD CHECK (length(password)>=6)
[2020-02-27 21:10:21] completed in 40 ms

ALTER TABLE member
    ADD CHECK (points>=0);
sql> ALTER TABLE member
         ADD CHECK (points>=0)
[2020-02-27 21:13:04] completed in 213 ms


INSERT INTO member VALUES ('hao.li@mail.mcgill.ca', '123456', '2010-02-03', 1000);
sql> INSERT INTO member VALUES ('hao.li@mail.mcgill.ca', '123456', '2010-02-03', 1000)
[2020-02-27 21:11:49] 1 row affected in 99 ms


UPDATE member
SET points=points-1000 WHERE email='lebron.james@nba.com';
sql> UPDATE member
     SET points=points-1000 WHERE email='lebron.james@nba.com'
[2020-02-27 21:14:31] [23514] ERROR: new row for relation "member" violates check constraint "member_points_check"
[2020-02-27 21:14:31] Detail: Failing row contains (lebron.james@nba.com, 123456, 2010-02-03, -600).


INSERT INTO member VALUES ('julia.kafato@mail.mcgill.ca', '123456', '2010-02-03', -100);
sql> INSERT INTO member VALUES ('julia.kafato@mail.mcgill.ca', '123456', '2010-02-03', -100)
[2020-02-27 21:16:08] [23514] ERROR: new row for relation "member" violates check constraint "member_points_check"
[2020-02-27 21:16:08] Detail: Failing row contains (julia.kafato@mail.mcgill.ca, 123456, 2010-02-03, -100).
```