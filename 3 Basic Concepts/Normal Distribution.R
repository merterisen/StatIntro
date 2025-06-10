#set.seed() functions makes sure that everything you do 
# will be reproduced if you run the code again
set.seed(1) 

#generate sample of 20 (200,2000, or whatever) obs. that follows normal dist. with mean=100 and sd=15
data <- rnorm(2000, mean=100, sd=15)

#view first 6 observations in sample
head(data)


#find mean of sample
mean(data)


#find standard deviation of sample
sd(data)

# check the histogram
hist(data, col='steelblue')

