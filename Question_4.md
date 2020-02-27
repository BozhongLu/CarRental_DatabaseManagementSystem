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

```


