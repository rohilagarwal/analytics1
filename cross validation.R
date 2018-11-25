data(mtcars)
samplesize<- floor(0.75 * nrow(mtcars))
set.seed(123)
train_data = sample(seq_len(nrow(mtcars)), size = samplesize)
train <- mtcars[train_data, ]
test <- mtcars[-train_data, ]                     
nrow(train)
nrow(test)

