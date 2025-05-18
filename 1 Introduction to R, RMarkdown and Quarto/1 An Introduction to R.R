#Install and load contributed packages:
#install.packages("dplyr")  #just once (unless you update R)
#install.packages("readxl")
#install.packages("haven")
#install.packages("psych")
#update.packages()                           #occasionally, to get the latest package updates

# load the necessary packages
library(dplyr)
getwd()


# --- basic operators

1+5 + 6 + 7 # addition
1-2 - 10 + 15 # subtraction
4*5 # multiplication
4/5 # division
4^2 # power # 4*4
4**2 # power
5%%4 # modulo


# --- built in functions

seq(0, 5, 0.1)
plot(seq(0,5,0.01))

exp(seq(0, 5, 0.1))
plot(exp(seq(0, 5, 0.1)))

mean(exp(seq(0, 5, 0.1)))

log(5)

cos(8)

c(5,6,7,8,2,9) # combine

mean(c(5,6,7,8,2,9))

median(c(5,6,7,8,2,9))

# functions can be nested; evaluation  happens "from the inside out" according to the following order of operations
# *terms inside parentheses or brackets
# *exponents and roots
# *multiplication and division As they appear left to right
# *addition and subtraction As they appear left to right

4+6*2
(4+6)*2 
4*6+2
4*6+2*8
(4*6)+(2*8)
4*(6+2)

exp(log(2))^5 # evaluate log(2), take the exp() of that, and take that to the fifth power.




#----------------------------- Objects and data types in R ------------------------------------

x <- (10+5)
(10+5) -> x

x == 15
x == 20
x != 20
x >= 15
x>20
x<300

sum(TRUE, FALSE)

TRUE && FALSE
TRUE || FALSE
TRUE | FALSE

a <- c(1, 2, 3, 4, NA)
b <- c(1, 2, 3, 4, 5, 6)

a %in% b

?plot
help(plot)

?log
help(log)

typeof('x')
typeof('Name')
typeof('5')
typeof(5)

class(5)
class('Name')

Y <- 5
Y <- as.character(Y)
Y # '5'
Y <- as.numeric(Y)
Y # 5



myvector <- c(11, 21, 31, 41, 51)
myvector - mean(myvector)

myvector[1]
myvector[c(1, 2, 3)]
myvector[1:3]
myvector[c(1:3)]

myvector[-1]
myvector[-2]
myvector[-3]
myvector[-c(1:3)]

myvector[c(T, F, TRUE, FALSE)]




seq(from = 5, to = -5, by = -0.5)

seq5 <- seq(from = 5, to = -5, by = -0.5)
seq1 <- seq(5, -5, -0.5)

identical(seq5, seq1)

rep(seq1, times=5)

as.character(seq1)

plot(seq1)




### MATRICES

?matrix

as.matrix(seq1)

matrix(seq1, nrow=3)
mymatrix <- matrix(seq1, nrow=3)

View(mymatrix)

mymatrix[3, 2] # 3rd row 2nd column
mymatrix[3, ] # 3rd row

mymatrix[1:2, 3:5]


# # LISTS: Indexing

list(a = 1, b = 2, c = "Pen")
mylist <- list(a = 1, b = 2, c = "Pen")

mylist$c
mylist[2]
mylist[3]
mylist[[3]]


# DATA FRAME

data.frame(stress=1:3, happiness=3:1, z=letters[24:26])
df <- data.frame(stress=1:3, happiness=3:1, z=letters[24:26])
View(df)

df[, c(1,3)] #  Integer subsetting (matrix)
df[c(1,3)] # Integer subsetting (list)


df[, c('stress', 'z')]

df2 <- df[1:2, c(1,3)]
df2

# Selecting rows
df[c(1,3), ] # Returns rows 1 and 3
df[,c(1, 3)] # Returns *columns* 1 and 3

df[['stress']]
df$stress

df$sadness <- 3:5
df

df$confusion <- df$happiness * df$sadness
df

rowMeans(df[c("stress", "happiness", "sadness", "confusion")])


####################### Functions ############

summation <- function(a, b){
  a <- sum(as.numeric(a))
  b <- sum(as.numeric(b))
  a+b
}

summation(7, 4)
summation('7', '4')
summation((1:3), (2:8))



########################### for loops and if else conditionals ###


for (x in (1:5)) {
  logv <- log(x)
  print(logv + 6)
}


for (i in (2:5)) {
  if (i>3) {
    print(i - 2)
  }
  else {
    print(i)
  }
}


for (i in (1:10)){
  if (i > 3){
    print(i - 2)
  }
  else if (i==3){
    print(i + 2)
  }
  else if (i==2){
    print(i*2)
  }
  else {
    print(i*10)
  }
}

