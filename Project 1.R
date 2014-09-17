x <- c(23, 53, 2, NA, 10, 9, 1)
x
# first quartile and third quartile
nummy <- cut(x, breaks = 3, labels = c("firstq", "secondq", "thirdq"))
data.frame(table(nummy))
#mean
sum((x + x)/3, na.rm = T)
#sum of missing values
sum(is.na(x))
#median
(sort(x))[2]
# minimum
(sort(x))[1]
#maximum
(sort(x))[3]
# sd
sd(x, na.rm = T)