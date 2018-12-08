#vector

#Normal distributed mean , SD 10

abc = rnorm(100, mean = 80, sd = 10)
abc
head(abc)
tail(abc)

#DF
(sname <- paste('student', 1:30, sep = '_'))
(marks <- trunc(runif(30, min= 50, max=90)))
#runif - uniform distribution
(gender <- sample(c('M', 'F'), replace = T, size = 30, prob = c(.7, .3)))
df1 <- data.frame(sname, marks, gender)
head(df1)
summary(df1)
mean(df1$marks)
range(df1$marks)

library(dplyr)
# to get the means gender wise
df1 %>% group_by(gender) %>% summarise(mean(marks))
df1 %>% group_by(gender) %>% summarise(mean(marks),n())
df1 %>% group_by(gender) %>% summarise(mean(marks),n(), min(marks), max(marks))


# arrange 
names(df1)
str(df1)
summary(df1)

#arrange marke
df1 %>% arrange(marks)
arrange(df1, marks)

#arrange marks in descending order
df1 %>% arrange(desc(marks))
arrange(df1, desc(marks))

#arrange marks in descending order with no gender 
df1[(order(df1$marks, decreasing = T)), c('sname', 'marks')]

#use dplyr
df1 %>% arrange(desc(marks)) %>% select(sname, marks)

#arange names

df1 %>% arrange(sname)

#arrange names in descending order
df1 %>% arrange(desc(sname))

#arrange names in descending order with no gender
df1 %>% arrange(desc(sname)) %>% select(sname, marks)

#random sampling from data
df1 %>% sample_n(3) # any 3 entries
df1 %>% sample_frac(.3) # any 30% entries

#enter 5 missing values on random location in marks column
df1[sample(1:30, size = 5), 2] = NA
df1
sum(complete.cases(df1))
sum(!complete.cases(df1))

df1[complete.cases(df1),]
df1[!complete.cases(df1),]

#now assign 99 to all the missing values
df1[!complete.cases(df1),2] = 99
df1

#assign mean to all the missing values
df1[!complete.cases(df1),2] = mean(df1$marks, na.rm = T)
df1

#store only rows with data in new data
df2 <- df1[complete.cases(df1),]
sum(is.na(df1)) #to give nos. of row with missing value in initial data frame
sum(is.na(df2))


# linear progression

# logistic progression

#reading file from computer
df<- read.csv(file.choose())
