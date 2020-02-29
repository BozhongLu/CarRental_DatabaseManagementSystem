Modification 1:   Description: It checks the relation redeemspoints, subtracts the amount from the points attribute of member, and then deletes the record in the redeemspoints relation.
```sql
SELECT * FROM member;
sql> SELECT * FROM member
[2020-02-27 22:11:03] 4 rows retrieved starting from 1 in 108 ms (execution: 12 ms, fetching: 96 ms)
bozhong.lu@mail.mcgill.ca	123456	2008-01-01	1000
hao.li@mail.mcgill.ca	123456	2010-02-03	1000
muhang.li@mail.mcgill.ca	654321	2020-02-19	1000
lebron.james@nba.com	123456	2010-02-03	900

UPDATE member SET points=
    (SELECT points FROM member WHERE member.email='lebron.james@nba.com') -
    (SELECT amt_of_points FROM member, redeemspoints WHERE member.email=redeemspoints.email)
    WHERE email='lebron.james@nba.com';
sql> UPDATE member SET points=
         (SELECT points FROM member WHERE member.email='lebron.james@nba.com') -
         (SELECT amt_of_points FROM member, redeemspoints WHERE member.email=redeemspoints.email)
         WHERE email='lebron.james@nba.com'
[2020-02-27 22:13:36] 1 row affected in 13 ms

SELECT * FROM member;
sql> SELECT * FROM member
[2020-02-27 22:14:03] 4 rows retrieved starting from 1 in 47 ms (execution: 13 ms, fetching: 34 ms)
bozhong.lu@mail.mcgill.ca	123456	2008-01-01	1000
hao.li@mail.mcgill.ca	123456	2010-02-03	1000
muhang.li@mail.mcgill.ca	654321	2020-02-19	1000
lebron.james@nba.com	123456	2010-02-03	800

DELETE FROM redeemspoints WHERE email='lebron.james@nba.com';
sql> DELETE FROM redeemspoints WHERE email='lebron.james@nba.com'
[2020-02-27 22:19:25] 1 row affected in 12 ms

```

Modification 2:   Description: It checks whether the card provided by the card_holder has been expired or not. If the card has expired, it needs to be modified.
```sql
SELECT * FROM payment;
200000000000	Muhang Li	200	200 Calgary	2023-09-01
300000000000	Hao Li	300	300 Edmonton	2023-09-01
400000000000	Julia Kafato	400	400 Toronto	2023-09-01
500000000000	Lebron James	500	500 Los Angeles	2023-09-01
100000000000	Bozhong Lu	456	100 Montreal	2019-02-01

SELECT * FROM payment WHERE expiry_date <= CURRENT_DATE;
100000000000	Bozhong Lu	456	100 Montreal	2019-02-01

UPDATE payment SET expiry_date='2023-05-03' WHERE card_number=100000000000;
UPDATE payment SET cvc=123 WHERE card_number=100000000000;
SELECT * from payment WHERE cardholder='Bozhong Lu';
100000000000	Bozhong Lu	123	100 Montreal	2023-05-03

```
