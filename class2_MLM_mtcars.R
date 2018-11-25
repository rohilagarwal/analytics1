#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
#install.packages('olsrr')
install.packages("olsrr")
library(olsrr) #logistic regression
#mtcars
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
summary(model)
k <- ols_step_all_possible(model) #to check what all independent variables are to be chosen. Which ever has highest adjusted R square then use those variables as independent
plot(k)
k
summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp, data=mtcars))
summary(lm(mpg ~ hp + wt + qsec, data=mtcars))
