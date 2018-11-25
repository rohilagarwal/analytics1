x=c(1:10)
(x)
x=c(2,5,3,6,7,10)
(x)
x[2]
sort(x)
x[-4]
x=sort(x)
(x)
plot(density(x))
plot(hist(x))
x = rnorm(100)
(x)
plot(hist(x))
plot(hist(x), freq = F)
(x)
plot(hist(x))
#matrix
100:111
length(100:111)
matrix(1,ncol = 3, nrow = 4)
matrix(100:111, nrow = 4, byrow = T)
(m1 = matrix(100:111, nrow = 4))
(m2 = matrix(100:111, ncol = 3, byrow = T))
class(m1)
attributes(m1)
dim(m1)
m1
m1[1]
m1[1];m1[1]
m1
m1[1,]
m1[,1]
m1[,1, drop = F]
m1[c(1,3),]   
m1[(1,3),]
paste('c', 'd', sep = '-')
colnames(m1) = paste('c', 1:3, sep = '')
m1
m1[,c('c1','c3')]
#matrix----
#array----


  