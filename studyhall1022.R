require(dplyr)
install.packages("nycflights13")
require(nycflights13)
head("nycflights13")
list("nycflights13")
data(package = "nycflights13")
dim(airlines)
dim(weather)
dim(planes)
dim(flight)
dim(airports)
head(airports)
head(weather)
head(flights)
filter(flights, arr_delay > 120)
select(flights, arr_delay, carrier, origin)
select(flights, - carrier)
arrange(weather, wind_speed)
arrange(weather, temp)
packageDescription("dplyr")["Version"]
R.version.string
mutate(flights,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60)
mutate(
  select(dep_delay, arr_delay)
  mutate