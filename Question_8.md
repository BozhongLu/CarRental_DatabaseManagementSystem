```sql
ALTER TABLE redeemspoints
    ADD CHECK (amt_of_points >= 0);
sql> ALTER TABLE redeemspoints
         ADD CHECK (amt_of_points >= 0)
[2020-02-27 21:26:41] completed in 9 ms

ALTER TABLE driver
    ADD CHECK (licence_expiry > current_date);
sql> ALTER TABLE driver
         ADD CHECK (licence_expiry > current_date)
[2020-02-27 21:32:24] completed in 8 ms

INSERT INTO driver VALUES ('123456789', 'Helen', '1995-01-01', '1996-01-01');
sql> INSERT INTO driver VALUES ('123456789', 'Helen', '1995-01-01', '1996-01-01')
[2020-02-27 21:34:29] [23514] ERROR: new row for relation "driver" violates check constraint "driver_licence_expiry_check"
[2020-02-27 21:34:29] Detail: Failing row contains (123456789, Helen, 1995-01-01, 1996-01-01).

UPDATE redeemspoints
SET amt_of_points=-100 WHERE email='tom@gmail.com';
sql> select current_database() as a, current_schemas(false) as b
[2020-02-27 21:35:24] completed in 23 ms

```