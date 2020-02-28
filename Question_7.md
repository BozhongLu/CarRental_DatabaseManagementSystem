1. Description: The view checks all the members who registered in 2010 and has points more than 500. It also hides the passwords.
```sql
CREATE VIEW v_member_VIP_2010
AS
SELECT email, points FROM member
WHERE points >= 500 AND registration_date > '2010-01-01' AND registration_date < '2010-12-31';
sql> CREATE VIEW v_member_VIP_2010
     AS
     SELECT email, points FROM member
     WHERE points >= 500 AND registration_date > '2010-01-01' AND registration_date < '2010-12-31';
[2020-02-27 20:01:09] completed in 20 ms

SELECT * FROM v_member_VIP_2010;
sql> SELECT * FROM v_member_VIP_2010
[2020-02-27 20:20:06] 1 row retrieved starting from 1 in 25 ms (execution: 8 ms, fetching: 17 ms)
lebron.james@nba.com	5000

UPDATE v_member_VIP_2010 SET points=400 WHERE email='lebron.james@nba.com';
sql> UPDATE v_member_VIP_2010 SET points=400 WHERE email='lebron.james@nba.com'
[2020-02-27 20:25:27] 1 row affected in 15 ms
SELECT * FROM v_member_VIP_2010;
sql> SELECT * FROM v_member_VIP_2010
[2020-02-27 20:27:18] 0 rows retrieved in 84 ms (execution: 27 ms, fetching: 57 ms)
```



