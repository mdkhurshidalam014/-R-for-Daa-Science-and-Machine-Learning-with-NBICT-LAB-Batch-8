#vectors in R
#creating a vector using the c() command
student.height= c(60,69,55,62)
student.height

#checking the class of the vector student.height
class(student.height)
is.numeric(student.height)
is.logical(student.height)

#R automatically converse numeric to text
#when you have a text item in the vector
b=c(5,8,2,"sv")
b
is.numeric(b)
is.character(b)

#we can convert data types
#for example, from numeric to character
a<-c(1,2,3,4,5)
class(a)
is.numeric(a)
as.character(a)
class(a)
a=as.character(a)
class(a)

#Logical operator TRUE and FALSE when converted to numeric
#TRUE converts to 1,and FALSE converts to 0
d=c(TRUE,FALSE,FALSE,TRUE,FALSE)
d=as.numeric(d)
d

#converting numeric to logical(1 or any number other than 0 converts to TRUE)
#0 converts to FALSE
d
class(d)
d=as.logical(d)
d

e=c(1,0,0,1,23,-7,0)
e
e=as.logical(e)
e

#creating sequential vector
#creating a vector starting from 1to 10
my_seq=c(1:10)
my_seq
my_seq=c(1:100)
my_seq
my_seq=c(1:50, 80, 89, 78, 77, 99, 78, 95, 67,72,94)
my_seq

#creating a sequential vector using the Seq()function
new_seq=c(seq(1,10))
new_seq

#sequence in step of 3
new_seq=c(seq(1,10, by=3))
new_seq

#vectors can have character 
names=c("Sahanaj","Khurshid","Parvin" , "lemon")
names
class(names)
names[3]
names[2:4]

names=c("Sahanaj","Khurshid","Parvin" , "lemon", "Tina", "Ajifa", "Zara", "Anis", "Arohi")
names

#Assigning names to vector values 
my_values=c(4,7,9,11)
names(my_values)=c("a","b","c","d")
my_values
my_values["c"]
