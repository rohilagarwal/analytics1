#decision tree

#types - Regression & classificaition

iris
head(iris)
library(rpart)
library(rpart.plot)


#Regression tree
#Dependent variable - sepal.length
names(iris)
rtree <- rpart(Sepal.Length ~ ., data = iris, method = 'anova')
rtree
rpart.plot(rtree, nn = T)
printcp(rtree)
ctreeprune1 <- prune(ctree, cp = 0.01)
rpart.plot(rtree, nn = T)
(ndata = sample_n(iris,3))
predict(ctree, newdata = ndata, type = 'prob')
predict(ctree, newdata = ndata, type = 'class')


#classification tree
# DV - speces
ctree <- rpart(Species ~ ., data = iris, method = 'class')
ctree
rpart.plot(ctree, nn = T)
