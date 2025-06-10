#When the same experiment is repeated many times,
#the average of the results gradually approaches the theoretical (expected) mean.

#sample size
samp.size <- 100

#number of experiment
n.samps <- 1000

# Generate random samples from a normal distribution
samps <- rnorm(samp.size*n.samps, mean = 0, sd=1)

samp.mat <- matrix(samps, ncol = n.samps)

# Compute the mean of each sample
samp.mean <- colMeans(samp.mat)

hist(samp.mean)
