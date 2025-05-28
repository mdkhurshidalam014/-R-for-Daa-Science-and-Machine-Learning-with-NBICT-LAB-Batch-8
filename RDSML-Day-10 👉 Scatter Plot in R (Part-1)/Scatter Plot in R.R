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

#

