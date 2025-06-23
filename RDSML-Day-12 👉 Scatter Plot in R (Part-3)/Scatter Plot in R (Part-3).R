library(ggplot2)
dataset=mtcars


#Converting cyl column from a numeric to a factor variable
dataset$cyl=as.factor(dataset$cyl)

#Adding regression lines based on multiple groups
ggplot(dataset, aes(x=wt,y=mpg,color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm)

#Removing the confidence intervals
ggplot(dataset, aes(x=wt,y=mpg,color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE)

#Extending the regression lines
ggplot(dataset, aes(x=wt,y=mpg,color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)

#Filling the color of confidence bands 
ggplot(dataset, aes(x=wt,y=mpg,color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, aes(fill = cyl))

#Changing point shapes manually
ggplot(dataset, aes(x=wt,y=mpg,color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values = c(15,16,17))+
  theme(legend.position = "top")

#Changing point colors manually
ggplot(dataset, aes(x=wt,y=mpg,color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values = c(15,16,17))+
  scale_color_manual(values = c("4" = "green", "6" = "blue", "8" = "darkgreen"))

#Customizing scatter plots
library(ggplot2)

# Ensure 'cyl' is a factor
dataset$cyl <- as.factor(dataset$cyl)

ggplot(dataset, aes(x = wt, y = mpg, color = cyl, shape = cyl)) +
  geom_point(size = 1, alpha = 0.8) +  # Larger, semi-transparent points
  geom_smooth(method = "lm", se = FALSE, fullrange = TRUE,  color = "black") +
  scale_shape_manual(values = c("4" = 15, "6" = 16, "8" = 17)) +
  scale_color_manual(values = c("4" = "red", "6" = "blue", "8" = "darkgreen")) +
  labs(
    title = "Miles per Gallon according to the weight",
    x = "Weight (1000 lbs)",
    y = "Miles Per Gallon",
    color = "Cylinders",
    shape = "Cylinders"
  ) +
  theme_minimal(base_size = 14) +  # Clean theme with larger base font
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", color = "darkblue"),
    legend.position = "top",
    panel.grid.major = element_line(color = "green80"),
    panel.grid.minor = element_blank()
  )


                     