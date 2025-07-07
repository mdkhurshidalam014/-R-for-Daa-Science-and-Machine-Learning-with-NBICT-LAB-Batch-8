#loading the dataset
myData=ToothGrowth


#Converting the variable dose from a numeric to a factor variable
myData$dose=as.factor(myData$dose)

library(ggplot2)

#Basic box plot
ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot()

#Rotating the box plot
ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot()+
  coord_flip()

#Notched box plot
ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot(notch=T)

#Changing outlier, color, shape, and size
ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot(outlier.color = "red", outlier.shape = 8,
               outlier.size=3)

#Choosing which items to display
ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot(outlier.color = "red", outlier.shape = 8,
               outlier.size=3)+
  scale_x_discrete(limits=c("0.5","2"))

#Changing box plot line colors by groups
ggplot(myData, aes(x=dose,y=len,colour = dose))+
  geom_boxplot()

#changing the item order
ggplot(myData, aes(x=dose,y=len,colour = dose))+
  geom_boxplot()+
  scale_x_discrete(limit=c("2","0.5","1"))

#boxplot with multiple groups
ggplot(myData, aes(x=dose,y=len,colour = dose,fill=supp))+
  geom_boxplot()

#changing the position
ggplot(myData, aes(x=dose,y=len,colour = dose,fill=supp))+
  geom_boxplot(position=position_dodge(1))

#Changing box plot colors by groups
ggplot(myData, aes(x = dose, y = len, fill = dose)) +
  geom_boxplot() +
  scale_fill_manual(values = c("yellow", "red", "black"))


#Changing the order of items in the legend


#Box plot with multiple groups


#Changing box plot colors by group


#Changing the box position

