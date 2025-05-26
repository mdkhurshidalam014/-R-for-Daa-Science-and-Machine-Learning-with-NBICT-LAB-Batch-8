# Descriptive statistics using the psych package

install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# Using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)

#introducing the colnames () function
colnames(demo)=c('arrival delay', 'Departure Delay', 'Distance Travelled')
describe(demo)

#Introducing the hist() function
dep_delay
hist((dep_delay))

#How to group descriptive statistics
head(nycflights13::flights)
summary(carrier)
carrierFact = factor(carrier)
summary(carrierFact)


#Two levels of aggregation
aggregate(distance, by = list(carrier, month), FUN = mean, na.rm = TRUE)
