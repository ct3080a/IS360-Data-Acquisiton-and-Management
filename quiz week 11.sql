1. Show the first five rows from the weather table. You don’t need to sort the results.
SELECT *
from weather
limit 5;

2. What was the average wind speed over time—that is, across all of the rows in the table?
SELECT
AVG (wind_speed) AS "Average Wind Speed"
from weather;

3. What was the average wind speed for each month? How many rows are returned from your query? How might 
you handle this?
SELECT
AVG (wind_speed) AS "Monthly Wind Speed"
from weather
GROUP BY month
ORDER BY month;

This query returns 6 rows. One of these rows compiles the null values. We can include (ISNULL (wind_speed, 0)) to the AVG argument to supress that.

4. Which were the five windiest days? Drill down on the data for the windiest day—what does this tell us? What 
might we do next here?
SELECT *
from weather
GROUP BY month
ORDER BY wind_speed DESC
limit 6;

Now that we have the windest days we can get the average speeds and gusts for these days. 3 of the windiest days fell in January, so we can explore the weather in that month to  see what the trend is.

5. Write and provide the SQL Script that answers a different “interesting” question about the data in the weather
table.
SELECT
month AS "month"
dewp AS "dew"
humid AS "humid"
from weather
WHERE month = '3';

Challenge Exercise
When was the weather the coldest? Show only one row for that day.
SELECT *
from weather
ORDER BY temp ASC
limit 1;