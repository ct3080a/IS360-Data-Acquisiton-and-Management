
install.packages("devtools")
library(devtools)
build_github_devtools()
#restarted r
install.packages("devtools.zip", repos = NULL)
unlink("devtools.zip")
library(rvest)
