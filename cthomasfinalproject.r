# Describe an approach for combining data from the flights database with data from the hflights
# dataset.
One way to combine data from the flights and hflights databases is to 
work in r using a combining package like sqldf and saving a flights query in an odbc. Another option if "flights" was not so large would be 
to use the plyr package and the join function. This would require opening
both packages in r.

# ??? Provide the code (possibly using both R and SQL) to actually combine the data into a single PostgreSQL
# database. You may "cut reasonable corners," such as excluding columns that are not available in the
# corresponding tables from both datasets, as long as your document these assumptions.
First I need to rename specific columns in the flights database andsave in my odbc to access the resulting data in r


SELECT
year AS 'Year',
month AS 'Month',
day AS 'DayofMonth',
dep_time AS 'DepTime',
arr_time AS 'ArrTime',
arr_delay AS 'ArrDelay',
dep_delay AS 'DepDelay',
origin AS 'Origin',
dest AS 'Dest',
distance AS 'Distance',
FROM flights;

library(RODBC)
flights2 <- odbcConnect("MyFinale")

# I loaded dplyr and hflights, converted it to a local data frame and loaded the sqldf package. 
flights1 <- tbl_df(hflights)

library(sqldf)
flight2<- sqldf("select * from flights limit 5")
head(flight2)



# I joined the two databases via the following columns: ArrDelay, DepDelay, Origin, Dest, Distance, DepTime, ArrTime, Year, Month, DayOfMonth
# All other columns were ignored because they did not overlap.


# ??? Based on the data, which city would you rather fly out of? Explain.
Based on the data I would rather fly out of JFK in NYC. My reasoning is that it is a hub station with the most flights in and out.

# ??? Is it easier to get from Houston to New York than it is to get from New York to Houston? Explain.

# ??? What other insights could be gained from examining the combined data?
By combining the data we can also examine what the best and worst days are with regards to departure and arrival delays. We can 

# ??? You should include at least one graphic in support of your above analysis and conclusions.
require(ggplot2)
data(TotalFlight)
head(TotalFlight)

hist(TotalFlight$Origin, main = "Best Cities for Flight")

# ??? What other data might you want to include that might let your garner additional useful insights from this
# dataset?# 
It would have been best to have data on cancellations, diverted flighhts and taxiing in the flights database. This 
would allow a more robust look at the data and made the decision on which city I would rather fly out of easier.
Also Carrier information in the flights database would allow us to compare departures and arrivals for specific carriers in different cities.