#Descriptive  statistics using the psych package

install.packages("psych")
library(psych)

data()
AirPassengers
BOD 

#using the new York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

#Lets look ar the first 6 records using the head() function
head(nycflights13::flights)
nycflights13::flights
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)
