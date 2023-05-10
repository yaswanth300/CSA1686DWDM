m <- lm(Petal.Width ~ Petal.Length, data=iris)
plot(Petal.Width ~ Petal.Length, data=iris, col="dodgerblue1")
abline(m, col="brown2")
