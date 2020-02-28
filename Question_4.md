```sql

/* Insert Locations */
cs421.cs421g83> INSERT INTO location VALUES ('1225 MetCalfe Montreal QC Canada', 'Monday to Friday: 8am~7pm ; Weekend: 9am~5pm', 'Downtown Montreal', 5141231234)
[2020-02-25 18:05:37] 1 row affected in 10 ms

cs421.cs421g83> INSERT INTO location VALUES ('221B Baker Street London England', 'Monday to Friday: 8am~7pm ; Weekend: 9am~5pm', 'The Sherlock Branch', 18540106)
[2020-02-26 12:27:44] 1 row affected in 11 ms

cs421.cs421g83> INSERT INTO location VALUES ('350 Fifth Avenue New York USA', 'Monday to Friday: 8am~7pm ; Weekend: 9am~5pm', 'Empire State Branch', 1234567)
[2020-02-26 12:27:44] 1 row affected in 8 ms

cs421.cs421g83> INSERT INTO location VALUES ('Liberty Island New York USA', 'Monday to Friday: 8am~7pm ; Weekend: 9am~5pm', 'Liberty Statue Branch', 7654321)
[2020-02-26 12:27:44] 1 row affected in 18 ms

cs421.cs421g83> INSERT INTO location VALUES ('1600 Pennsylvania Avenue Washington DC', 'Monday to Friday: 8am~7pm ; Weekend: 9am~5pm', 'The White House Branch', 12345678)
[2020-02-26 12:27:44] 1 row affected in 9 ms

cs421.cs421g83> INSERT INTO location VALUES ('Tour Eiffel Champ de Mars Paris France', 'Monday to Friday: 8am~7pm ; Weekend: 9am~5pm', 'The Eiffle Tower Branch', 34567890)
[2020-02-26 12:28:17] 1 row affected in 7 ms

/* Insert CarClasses */

cs421.cs421g83> INSERT INTO carclass VALUES ('Economy Car', 82.05, 2, 'Rent an economy car for driving in crowded, downtown areas with busy traffic and tight parking spaces. Economy car rentals typically offer the best fuel efficiency.')
[2020-02-26 19:45:45] 1 row affected in 12 ms

cs421.cs421g83> INSERT INTO carclass VALUES ('Compact Car', 83.23, 4, 'Compact cars offer great gas mileage and the ease of driving and parking in high traffic areas.')
[2020-02-26 19:45:45] 1 row affected in 6 ms

cs421.cs421g83> INSERT INTO carclass VALUES ('Intermediate Car', 84.38, 5, 'An intermediate car rental provides some more room for passengers and luggage than most smaller cars.')
[2020-02-26 19:45:45] 1 row affected in 6 ms

cs421.cs421g83> INSERT INTO carclass VALUES ('Standard Car', 87.83, 5, 'Just Regular cars in our homes, so u know what its like :)' )
[2020-02-26 19:45:45] 1 row affected in 8 ms

cs421.cs421g83> INSERT INTO carclass VALUES ('Full Size Car', 89.83, 5, 'A Full-Size car rental is helpful when needing more passenger room and luggage space than a smaller call offers.')
[2020-02-26 19:47:37] 1 row affected in 8 ms

cs421.cs421g83> INSERT INTO carclass VALUES ('Intermediate SUV', 100.02, 50, 5, 'You’ll enjoy better gas millage and have any easier time parking and handling the vehicle.', '1225 MetCalfe Montreal QC Canada')
[2020-02-25 18:08:29] 1 row affected in 8 ms

cs421.cs421g83> UPDATE carclass SET features='Our SUVs offer plenty of flexibility with seating capacity, power, and luggage room.' WHERE name='Intermediate SUV'
[2020-02-26 19:54:45] 1 row affected in 13 ms

cs421.cs421g83> INSERT INTO carclass VALUES ('Mini Van', 110.25, 7, 'Our minivans and passenger vans can seat up to 7 passengers respectively and are great for family vacations or accommodating large groups.')
[2020-02-26 19:49:16] 1 row affected in 7 ms

/* Insert customer */

cs421.cs421g83> INSERT INTO customer VALUES ('bozhong.lu@mail.mcgill.ca', 'Bozhong Lu', 514965090)
[2020-02-26 20:22:32] 1 row affected in 258 ms

cs421.cs421g83> INSERT INTO customer VALUES ('muhang.li@mail.mcgill.ca', 'Muhang Li', 5141231234)
[2020-02-26 20:22:33] 1 row affected in 268 ms

cs421.cs421g83> INSERT INTO customer VALUES ('hao.li@mail.mcgill.ca', 'Hao Li', 5143452345)
[2020-02-26 20:22:35] 1 row affected in 59 ms

cs421.cs421g83> INSERT INTO customer VALUES ('julia.kafato@mail.mcgill.ca', 'Julia Kafato', 5146786789)
[2020-02-26 20:22:36] 1 row affected in 285 ms

cs421.cs421g83> INSERT INTO customer VALUES ('lebron.james@nba.com', 'Lebron James', 23232323)
[2020-02-26 20:22:37] 1 row affected in 392 ms

cs421.cs421g83> INSERT INTO customer VALUES ('dwayne.wade@nba.com', 'Dwayne Wade', 0303030303)
[2020-02-26 20:25:26] 1 row affected in 9 ms


/* Insert Car */

cs421.cs421g83> INSERT INTO car VALUES ('000000001', 'BMW', 'ABC123','BMW X1', 'Red', '2020-02-20', 10000, 'Intermediate SUV', 0000001, 'With its responsive engine, sporty handling and ample cargo space, the BMW X1 stands out as a top luxury subcompact SUV' )
[2020-02-26 20:55:10] 1 row affected in 8 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000002', 'Porche', 'ABC456','Porche Macan', 'Blue', '2020-02-20', 5000, 'Intermediate SUV', 0000002, 'With snappy acceleration from a range of turbocharged engines, precise handling and a firm yet compliant ride quality, the Macan is arguably the closest you can get to a 911 in an SUV' )
[2020-02-26 20:55:10] 1 row affected in 67 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000003', 'Mercedes-Benz', 'ABC789','Mercedes-Benz GLE', 'White', '2020-02-20', 10000, 'Intermediate SUV', 0000001, 'With innovative safety features, a roomy interior, and one of the best infotainment systems around, the GLE is a stellar pick for a midsize luxury SUV' )
[2020-02-26 20:55:10] 1 row affected in 9 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000004', 'BMW', 'ABC890','BMW 330', 'Red', '2020-02-20', 2000, 'Intermediate Car', 0000002, 'The 330 is a fresh face among luxury sedans, and it impressed us right out of the gate' )
[2020-02-26 20:57:00] 1 row affected in 7 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000005', 'Mercedes-Benz', 'ABC012','Mercedes-Benz C-A', 'White', '2020-02-20', 5000, 'Full Size Car', 0000001, 'The A-Class is a fresh face among luxury sedans, and it impressed us right out of the gate' )
[2020-02-26 20:58:42] 1 row affected in 10 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000006', 'Porche', 'ABC000','Porche Panamela', 'Silver', '2019-05-12', 2000, 'Compact Car', 0000005, 'The Panamela is a fresh face among luxury sedans, and it impressed us right out of the gate' )
[2020-02-26 21:20:04] 1 row affected in 10 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000007', 'Toyota', 'ABC001','Camery', 'Black', '2020-01-15', 1000, 'Economy Car', 0000004, 'The Camery is a fresh face among luxury sedans, and it impressed us right out of the gate' )
[2020-02-26 21:20:04] 1 row affected in 9 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000008', 'Ford', 'ABC002','Predator', 'Black', '2020-02-01', 2000, 'Mini Van', 0000005, 'The Predator is a fresh face among luxury mini van, and it impressed us right out of the gate' )
[2020-02-26 21:20:04] 1 row affected in 9 ms

cs421.cs421g83> INSERT INTO car VALUES ('000000009', 'Ford', 'ABC003','Fox', 'Blue', '2018-12-08', 2000, 'Standard Car', 0000003, 'The Fox is a fresh face among luxury sedans, and it impressed us right out of the gate' )
[2020-02-26 21:20:58] 1 row affected in 10 ms

/* Insert Driver */

cs421> INSERT INTO driver VALUES ('abc000001', 'Bradley Cooper', '1980-09-03','2021-06-01')
[2020-02-27 12:02:30] 1 row affected in 29 ms

cs421> INSERT INTO driver VALUES ('abc000002', 'Jason Tatum', '1990-10-03','2021-06-01')
[2020-02-27 12:02:30] 1 row affected in 9 ms

cs421> INSERT INTO driver VALUES ('abc000003', 'Kyrie Irving', '1991-02-03','2021-06-01')
[2020-02-27 12:02:30] 1 row affected in 9 ms

cs421> INSERT INTO driver VALUES ('abc000004', 'Tristan Thompson', '1985-09-03','2021-06-01')
[2020-02-27 12:02:30] 1 row affected in 13 ms

cs421> INSERT INTO driver VALUES ('abc000005', 'Ja Morant', '1995-07-04','2021-06-01')
[2020-02-27 12:02:30] 1 row affected in 10 ms

cs421> INSERT INTO driver VALUES ('abc000006', 'Trae Young', '1996-06-02','2021-06-01')
[2020-02-27 12:02:31] 1 row affected in 12 ms

cs421> INSERT INTO driver VALUES ('abc000007', 'Steph Curry', '1989-10-12','2021-06-01')
[2020-02-27 12:02:31] 1 row affected in 13 ms


/* Insert employee */
cs421> INSERT INTO employee VALUES (0000001, 5140000001, 'Danny Green', 'danny.green@nba.com', 3000, '2019-06-30', 'Customer Service', '1985-12-31')
[2020-02-27 20:02:29] 1 row affected in 9 ms

cs421> INSERT INTO employee VALUES (0000002, 5140000002, 'Jeff Green', 'jeff.green@nba.com', 3000, '2019-06-30', 'Customer Service', '1984-11-20')
[2020-02-27 20:02:29] 1 row affected in 13 ms

cs421> INSERT INTO employee VALUES (0000003, 5140000003, 'JaVale McGee', 'javale.mcgee@nba.com', 6000, '2019-12-30', 'Maintenance','1990-12-31')
[2020-02-27 20:02:29] 1 row affected in 9 ms

cs421> INSERT INTO employee VALUES (0000004, 5140000004, 'Anthony Davis', 'anthony.davis@nba.com', 3000, '2018-06-30', 'Maintenance','1988-11-20')
[2020-02-27 20:02:29] 1 row affected in 8 ms

cs421> INSERT INTO employee VALUES (0000005, 5140000005, 'Demarcus Cousins', 'demarcus.cousins@nba.com', 3000, '2019-01-30', 'Customer Service','1991-12-23')
[2020-02-27 20:02:29] 1 row affected in 9 ms

cs421.cs421g83> INSERT INTO employee VALUES (0000006, 5140000006, 'Jimmy Buttler', 'jimmy.buttler@nba.com', 6000, '2019-02-10', 'Maintenance','1986-10-20')
[2020-02-27 20:03:13] 1 row affected in 8 ms


/* Insert maintenance */
cs421.cs421g83> INSERT INTO maintenance VALUES (0000003, 'abc001', '2025-09-10')
[2020-02-27 20:08:56] 1 row affected in 10 ms
cs421.cs421g83> INSERT INTO maintenance VALUES (0000004, 'abc002', '2023-09-10')
[2020-02-27 20:08:56] 1 row affected in 9 ms
cs421.cs421g83> INSERT INTO maintenance VALUES (0000006, 'abc003', '2021-09-10')
[2020-02-27 20:08:56] 1 row affected in 16 ms


/* Insert CustomerService */
cs421.cs421g83> INSERT INTO customerservice VALUES (0000001)
[2020-02-27 20:12:37] 1 row affected in 7 ms
cs421.cs421g83> INSERT INTO customerservice VALUES (0000002)
[2020-02-27 20:12:37] 1 row affected in 9 ms
cs421.cs421g83> INSERT INTO customerservice VALUES (0000005)
[2020-02-27 20:12:37] 1 row affected in 9 ms

```


