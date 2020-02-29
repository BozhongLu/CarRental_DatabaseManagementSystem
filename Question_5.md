(i)
Query:
```sql
SELECT SUM(salary) 
FROM employee
```

Response:
sql> SELECT SUM(salary) from employee
[2020-02-28 17:11:29] 1 row retrieved starting from 1 in 65 ms (execution: 11 ms, fetching: 54 ms)

Description:
This query returns one row with one value: 30000.3 (see i in q5_images). This value represents the sum of all employees' salaries.

This query could be used by our company to determine yearly expenses from employees' wages for accounting purposes.

(ii)
Query:
```sql
SELECT registration_num, MAX(milage) 
FROM car 
GROUP BY name
```

Description:
This query returns the highest mileage of cars grouped by their car classes.

This query could be used by our company to determine the cars that may need certain services, and cars that are getting to a point for which their expenses will likely exceed their profitability. It makes sense to group these by car class because different car classes may have different maximum mileages. For example, for an electric car, the mileage at which it would need to be scrapped is likely quite different from a hybrid or a gasoline car.

(iii)
Query:
```sql
SELECT registration_num 
FROM car
WHERE car_name_fkey IN (SELECT name
                        FROM carclass
                        WHERE daily_price < 30)
```

Description:
This query could be used when customers wish to rent and price is more important to them than storage space.

(iv)
Query:
```sql
SELECT COUNT(DISTINCT rental_customer__fk)
FROM rental
```
Description: This could be used for our company to determine how many unique customers there have been.

(v)
Query:
```sql
SELECT COUNT(rental_id)
FROM sells s LEFT JOIN droppedoffat d ON s.rental_id = d.rental_id
WHERE d.droppedofftime > x AND d.droppedofftime < y
GROUP BY employee_id

```

Description: This query can be used to see the number of sales for each employee to track their performance from time x to time y.
