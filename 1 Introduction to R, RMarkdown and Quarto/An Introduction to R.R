#Install and load contributed packages:
#install.packages("dplyr")                     #just once (unless you update R)
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




















