library(haven) # reading and writing .sav data 
library(dplyr) # for data processing, 
library(psych) # checks the reliability of a scale (Cronbach's alpha)
library(readxl)

data <- read_excel("C:\\Users\\MERT\\Documents\\Intro to Statistics with R\\0 Allgemeines\\Soscisurvey Data.xlsx")

#write.csv(data, 'Soscisurvey_Data.csv') #saves the data as csv

# read the data from the csv file on your working directory.
#data2 <- read.csv("Soscisurvey_Data.csv", header = T) 

# delete the data2
#rm(data2)

View(head(data)) # First 6 row

View(data[-1,]) # Removes first row

data[-1, -c(1:3, 5, 6, 57:82)]

options(digits = 3, scipen = 999)
?options

head(data, n=10)
tail(data)

# column names
colnames(data)

names(data)

names(data)[2:5]

# Concatenate Strings
paste('columns', 'abc')

paste('columns', 1:10, sep='_')

# change the first 2:5 column names to AIAttitude_1, AIAttitude_2 and so on
names(data)[2:5]
names(data)[c(2:5)]

names(data)[2:5] <- paste("AIattitude", 1:4, sep='_')
names(data)[2:5]

# change the columns to numeric
data$AIattitude_1 <- as.numeric(data$AIattitude_1)


# sapply way of doing that 
sapply(data[, 2:51], as.numeric)

data[, c(2:51)] <- sapply(data[, c(2:51)], as.numeric)

sapply(
  data[, 2:10],
  function(x){mean(x, na.rm=T) + 2} # na.rm=T skips NA
)

data[1:10, 1:10]

data[, 'Gender']
data[, grep('Gender', colnames(data))]
data$Gender

data[1:10, -c("Gender", "Age")]



# exclude all na rows from our dataset
sum(is.na(data$AIattitude_1))

sum(is.na(data))

data[!is.na(data$AIattitude_1),]

rm(AiAttitude)
rm(data)

####################################################
# Data manipulation using dyplr vs. base/indexing: #
####################################################

data <- read_excel("C:\\Users\\MERT\\Documents\\Intro to Statistics with R\\0 Allgemeines\\Soscisurvey Data.xlsx")




