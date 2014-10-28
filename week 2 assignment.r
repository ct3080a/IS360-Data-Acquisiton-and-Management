# 1. Assign the five individuals to a vector called queue
queue <- c("James", "Mary", "Steve", "Alex", "Patricia")

#2. Update the queue for the arrival of a new patron named Harold
queue2 <- c(queue, "Harold")

# 3. Update the queue to reflect the fact that James has finished checking out.
queue <- queue[-1]

# 4. Update the queue to reflect the fact that Pam has talked her way in front of Steve with just one item.
queue <- queue[c(1,2,5,3,4)]

# 5. Update the queue to reflect the fact that Harold has grown impatient and left
queue <- queue[1:5]

# 6. Update the queue to reflect the fact that Alex has grown impatient and left. 
queue <- queue[!(queue=="Alex")]

# 7. Identify the position of Patricia in the queue.
match("Patricia", queue)

# 8. Count the number of people in the queue.
length(queue)
