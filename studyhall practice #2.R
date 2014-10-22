# open diamonds dataset
require(ggplot2)
data(diamonds)
head(diamonds)
# boxplot
boxplot(diamonds$depth)
# violin plot
p <- ggplot(diamonds, aes(factor(carat), depth))
p + geom_violin()
# using jitter
p + geom_violin(jitter(factor=1.1), xlab="carats", ylab="depth")

