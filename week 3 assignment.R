# 1. Use R to determine how many numbers from 1 to 1000 are not divisible by any of 3,7, and 11.
num.Vec <- c(1:1000)
sum(num.Vec %in% c(num.Vec/3), c(num.Vec/7), c(num.Vec/7))

# 2. Write a function that takes a vector as input and returns the number of missing values in the vector.
icee <- c(1, NA, 7, 14)
sum(is.na(icee))

# 3. Write a function that takes a data frame as input and returns a named vector with the number of missing values in each column of the data frame. 
icees <- c(9, 24, 21, NA)
icee5 <- c(NA, 11, 85, 24)
icee4 <- factor(c("happy", "sad", "calm", "sleepy"))
quest <- data.frame(icee, icees, icee5, icee4)
missing_ice <- data.frame(icee, icees, icee5, icee4)
sum(is.na(missing_ice))

# 4. determine the minimum, the maximum, the mean, the median, the first quartile, the third quartile, the standard deviation of the vector, and the number of missing values. 
# first quartile and third quartile
num4ice <- cut(icee, breaks = 3, labels = c("firstq", "secondq", "thirdq"))
data.frame(table(num4ice))
#mean
sum((icee + icee)/3, na.rm = T)
#sum of missing values
sum(is.na(icee))
#median
(sort(icee))[2]
# minimum
(sort(icee))[1]
#maximum
(sort(icee))[3]
# sd
sd(icee, na.rm = T)
