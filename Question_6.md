Modification 1:
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


UPDATE carclass SET features= 
          ('Our SUVs offer plenty of flexibility with seating capacity, power, and luggage room.')-
          WHERE name='Intermediate SUV';
```

Modification 2:
```sql

```