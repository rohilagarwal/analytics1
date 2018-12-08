# Missing values

x = c(NA, 1, NA, 2,3, NA)
is.na(x)
?is.na
sum(is.na(x))
sum(c(T,F,T,F,F))
mean(x)
#if daat is missing, mean will not be calculated i.e. na.rm is false by default
mean(x, na.rm=T)
x

#now put mean in the missung value
x[is.na(x)]
x[is.na(x)] = mean(x, na.rm=T)
x


x1 = c(4,6,8,9)
#nos. which are greater than equal to 6
length(x1[x1 >= 6]) 
sum(x1 >= 6)
x1 >= 6

x2 = rnorm(100000, mean=50, sd=5)
length(x2)
posn=sample(100000, size=30)
x2[posn] = NA
sum(is.na(x2))

install.packages("VIM")

library(VIM)
?sleep
#already a sheet which have missing value in it - sleep
head(sleep)
dim(sleep)
#will analyze wvery row and will give if all the entries in row have value otherwise false
complete.cases(sleep)

#will give total no. of rows which are true i.e. have no missing values in them
sum(complete.cases(sleep))

# ! will give other which are false. no. of rows which have missing data
sum(!complete.cases(sleep))

#rows which are complete
sleep[complete.cases(sleep),]

#rows which have missing data
sleep[!complete.cases(sleep),]

#which column how many data missing
colSums(is.na(sleep))
#which row how many data is missing
rowSums(is.na(sleep))
