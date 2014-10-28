# 1.  Create a vector that contains 20 numbers. 
group1 <- c(1,1,27,11,30,6,24,9,13,85,81,5,10,6,26,8,2,12,11,24)
group1

# 2. Use R to convert the vector from question 1 into a character vector.
group2 <- as.character(group1)
group2

# 3.Use R to convert the vector from question 1 into a vector of factors. 
group3 <- as.factor(group1)
group3

# 4.  Use R to show how many levels the vector in the previous question has.
nlevels(group3)

# 5. Use R to create a vector that takes the vector from question 1 and performs on it the formula 3x^2 - 4x + 1
group1 <- 3 * group1 ^ 2 - 4 * group1 + 1
group1

# 6. Create a named list. That is, create a list with several 
# elements that are each able to be referenced by name.
trying1 <- list(greatness = 1:4, things = c("pizza", "shoes", "cheese"))
trying1$things[3]

# 7. Create a data frame with four columns - one each character, factor (with three levels), numeric, and date. 
# Your data frame should have at least 10 observations (rows).
show <- as.character(c("SpongeBob Squarepants", "Peppa Pig",
                       "TMNT", "Scandal", "Monk", "Everybody Loves Raymond",
                       "Mr. Roger's Neighborhood", "Chopped", "The Walking Dead", "Judge Judy"))
rating <- c("y", "y", "y", "r", "pg", "r", "y", "pg", "r", "pg" )
emmy <- as.numeric(c(2, 5, 1, 2, 10, 13, 22, 8, 3, 2))
episode1 <- as.Date(c("1999-12-3", "2007-1-12", "2013-3-3", "2012-6-9",
                      "2001-5-3", "2006-09-7", "1985-8-4", "2001-5-8", "2010-9-5", "1994-3-9"))
Stand <- data.frame(show, rating, emmy, episode1)
Stand$show <- as.character(Stand$show)
str(Stand)

# 8. Illustrate how to add a row with a value for the 
#factor column that isn't already in the list of levels
showextras <- data.frame(show="Married with Children", rating="pg", 
                         emmy=4, episode1="1990-6-24")
str(showextras)
showextras$episode1 <- as.Date(showextras$episode1)
showextras$show <- as.character(showextras$show)

str(showextras)
showextras$show
str(showextras)

Stand <- rbind(Stand, showextras)
Stand
str(Stand)

# 9. Show the code that would read in a CSV file called temperatures.csv 
#from the current working directory.
df <- read.table(file = "temperatures.csv", header = TRUE, sep = ",")
tail(df)
str(df)

# 10. Show the code that would read in a TSV file called measurements.txt
# from a directory other than the working directory on your local machine.
trial1 <- read.table(file = "c:/data/measurements.txt", header = TRUE, sep = "\t")
head(trial1)
str(trial1)

# 11. Show the code that will read in a delimited file with a pipe separator 
#     (the "|" symbol) from a website location.
url <- "http://homepages.wmich.edu/~m3schul1/pipetest.psv"
df <- read.table(file = url, header = FALSE, sep = "|")

df
str(df)