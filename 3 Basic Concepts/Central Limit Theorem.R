library(animation)

nball <- 500 #change the number of balls 
nlayer <- 25 #change the number of rows of pegs on the board 
rate <- 10 #change the speed at which the balls fall 

ani.options(nmax = nball + nlayer - 2, interval = 1/rate) 
quincunx(balls = nball, layers = nlayer)


# central limit theorem
library(devtools)
#install_github("mdedge/stfspack")
library(stfspack)

dosm.beta.hist(1000,10000,shape1 = 1, shape2 = 1)
