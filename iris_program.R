iris <- read.csv('~/Desktop/iris.csv')
hist(iris$petal_length, main='Length of Petals',xlab='Length', breaks=40, xlim=c(0,6.9))
stripchart(iris$petal_length, add=TRUE)
'sw' <- iris$sepal_width
'sl' <- iris$sepal_length
'pl' <- iris$petal_length
'pw'=iris$petal_width
#Iris$species is "factor" data, so summary(iris$species) gives frequency#
#is.numeric(iris$species) -> FALSE, so R recognizes it as a factor#
#is.data.frame(iris) -> TRUE#
#attributes(iris$species) tells the levels and class#
qqnorm(pl, main='QQ Plot of Iris Petal Length', xlab='Theoretical Quantiles of Petal Length', ylab='Samples Quantiles of Petal Length')
qqline(pl, add=TRUE)

virginica <- iris[iris$species == 'virginica',]
versicolor <- iris[iris$species == 'versicolor',]
setosa <- iris[iris$species == 'setosa',]

par(mfrow=c(1,3))
plot(versicolor$petal_length, versicolor$petal_width)
plot(setosa$petal_length, setosa$petal_width)
plot(virginica$petal_length, virginica$petal_width)

plot(pl, pw, main='Iris Petal Dimensions', xlab='Petal Length', ylab='Petal Width')
points(setosa$petal_length, setosa$petal_width, col=3)
points(virginica$petal_length, virginica$petal_width, col=6)
points(versicolor$petal_length, versicolor$petal_width, col=4)
legend(1, 2, c("Setosa","Versicolor","Virginica"),col=c(3,4,6), pch=1, cex=0.75)

plot(sl, sw, main='Iris Sepal Dimensions', xlab='Sepal Length', ylab='Sepal Width')
points(setosa$sepal_length, setosa$sepal_width, col=3)
points(virginica$sepal_length, virginica$sepal_width, col=6)
points(versicolor$sepal_length, versicolor$sepal_width, col=4)
legend(6.5, 4.2, c("Setosa","Versicolor","Virginica"),col=c(3,4,6), pch=1, cex=0.75)