#Creating a data frame
dataset=data.frame(dose=c("D0.5","D1","D2"),
                   len=c(4.2,10,29.5))
library(ggplot2)

#Basic barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity") 

#horizontal barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity") +
  coord_flip() 

#Changing the width of bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",width=0.2) 

#Changing colors
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",color="red",fill= "blue",width=0.2) 

#Minimal theme + blue fill color
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",fill= "steelblue")+
  theme_minimal()

#Bar plot with labels
#outside bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",fill= "steelblue")+
  geom_text(aes(label=len),vjust=-0.25, size = 3, color="#9F9F9F")
  theme_minimal()

#inside bars
  ggplot(data = dataset, aes(x = dose, y = len)) +
    geom_bar(stat = "identity",fill= "steelblue")+
    geom_text(aes(label=len),vjust=1.5, size = 3, color="white")
  theme_minimal()

myCarData=mtcars
#Barplot of counts
#to make Barplot of counts, we use mtcars dataset

ggplot(data = myCarData, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal()
