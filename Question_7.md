View 1: 

Description: The view checks all the members who registered in 2010 and has points more than 500. It also hides the passwords.
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

View 2:

Description: Shows the registration number and the travel time of all the black cars that has been transported.
```sql
CREATE VIEW v_blackcars_InTransport
AS
SELECT car.registration_num, travel_time FROM car, transportation
WHERE car.color='Black' AND car.registration_num=transportation.registration_num;
sql> CREATE VIEW v_blackcars_InTransport
     AS
     SELECT car.registration_num, travel_time FROM car, transportation
     WHERE car.color='Black' AND car.registration_num=transportation.registration_num
[2020-02-27 20:51:19] completed in 15 ms

SELECT * FROM v_blackcars_InTransport;
sql> SELECT * FROM v_blackcars_InTransport
[2020-02-27 20:54:01] 1 row retrieved starting from 1 in 61 ms (execution: 9 ms, fetching: 52 ms)
123456	09:30:00

UPDATE v_blackcars_InTransport
SET travel_time='10:30' WHERE registration_num=123456;
sql> UPDATE v_blackcars_InTransport
     SET travel_time='10:30' WHERE registration_num=123456
[2020-02-27 20:57:37] [55000] ERROR: cannot update view "v_blackcars_intransport"
[2020-02-27 20:57:37] Detail: Views that do not select from a single table or view are not automatically updatable.
[2020-02-27 20:57:37] Hint: To enable updating the view, provide an INSTEAD OF UPDATE trigger or an unconditional ON UPDATE DO INSTEAD rule.
```


View 1 is updatable while view 2 isn't. The reason is that View 1 selects from a single table, and view 2 selects from 2 tables.
For a view to be updatable, the rows in the view must be in an 1 to 1 relationship with the rows in the base table.