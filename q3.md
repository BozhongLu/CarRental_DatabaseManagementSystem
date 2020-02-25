Note: In order to successfully insert tuples into the relation **’redeemspoints'**, it requires us to insert some data into the table '**discount**'.



```sql
cs421> INSERT INTO discount VALUES(000001, 10.00, '10$ off', '2020-02-01', '2020-05-01')
[2020-02-24 20:50:21] 1 row affected in 31 ms
cs421> INSERT INTO discount VALUES(000002, 20.00, '20$ off', '2020-01-01', '2020-04-01')
[2020-02-24 20:50:22] 1 row affected in 25 ms
cs421> INSERT INTO discount VALUES(000003, 30.00, '30$ off', '2020-01-15', '2020-04-15')
[2020-02-24 20:50:22] 1 row affected in 106 ms
cs421> INSERT INTO discount VALUES(000004, 40.00, '40$ off', '2019-01-01', '2020-01-01')
[2020-02-24 20:50:22] 1 row affected in 14 ms
cs421> INSERT INTO discount VALUES(000005, 10.00, '10$ off', '2019-11-01', '2020-02-01')
[2020-02-24 20:50:22] 1 row affected in 22 ms


cs421.cs421g83> INSERT INTO redeemspoints VALUES(000001, 'tom@gmail.com', 100)
[2020-02-24 20:50:30] 1 row affected in 12 ms
cs421.cs421g83> INSERT INTO redeemspoints VALUES(000002, 'jerry@gmail.com', 200)
[2020-02-24 20:50:30] 1 row affected in 13 ms
cs421.cs421g83> INSERT INTO redeemspoints VALUES(000003, 'leo@gmail.com', 300)
[2020-02-24 20:50:30] 1 row affected in 9 ms
cs421.cs421g83> INSERT INTO redeemspoints VALUES(000004, 'kevin@gmail.com', 400)
[2020-02-24 20:50:30] 1 row affected in 9 ms
cs421.cs421g83> INSERT INTO redeemspoints VALUES(000005, 'bob@gmail.com', 100)
[2020-02-24 20:50:30] 1 row affected in 11 ms


cs421.cs421g83> SELECT * FROM redeemspoints
[2020-02-24 20:51:13] 5 rows retrieved starting from 1 in 70 ms (execution: 11 ms, fetching: 59 ms)
cs421.cs421g83> SELECT * FROM discount
[2020-02-24 20:51:35] 5 rows retrieved starting from 1 in 109 ms (execution: 10 ms, fetching: 99 ms)

```





![discount](https://tva1.sinaimg.cn/large/0082zybpgy1gc8ewfub6ij318k09umyk.jpg)





![redeemspoints](https://tva1.sinaimg.cn/large/0082zybpgy1gc8ewelu9tj30t00a2myf.jpg)







