#install.packages("ggplot2")
library(ggplot2)

dataset=mtcars

#generating basic scatter plot
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point()

#generating basic scatter plot
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=1)

# Adds linear regression line
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=1)+
  geom_smooth(method = "lm", se = TRUE, color = "blue")  

# Change 'red' to any color name or hex code
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=1)+
  geom_smooth(method = "lm", se = TRUE, color = "blue")+
  geom_point(color = "yellow", size = 3)

#Removing the confidence interval
ggplot(dataset,aes(x=wt,y=mpg))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE)

#Lowest method
ggplot(dataset,aes(x=wt,y=mpg))+
  geom_point()+
  geom_smooth()

#Change the line type and colour
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=1)+
  geom_smooth(method = lm,linetype = "dashed", color = "red")

#Changing the confidence interval colour
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=1)+
  geom_smooth(method = lm,linetype = "dashed", color = "red", fill = "lightblue")

#Scatter plots with multiple groups

#converting the cyl column from a numeric to factor variable
dataset$cyl=as.factor(dataset$cyl)

#changing the point shapes of the levels of cyl
ggplot(dataset,aes(x=wt, y=mpg,shape = cyl, colour = cyl))+
  geom_point()

#changing point sizes
ggplot(dataset,aes(x=wt, y=mpg,size=cyl))+
  geom_point()


  