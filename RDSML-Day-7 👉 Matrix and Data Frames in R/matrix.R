#matrix in R
study_hour=c(7,8,5,6,8,9,5,6,8,9)
Subject_marks=c(78,89,50,88,93,76,91,67,56,97)

#creating matrix just using study hour
study_hour_mat=matrix(study_hour)
study_hour_mat
study_hour

#joining two columns in a matrix
student_data=c(study_hour,Subject_marks)
student_matrix=matrix(student_data, byrow = FALSE,nrow=10)
student_matrix

#naming rows and columns
colnames(student_matrix)=c('Hours','Marks')
student_matrix
rownames(student_matrix)=c(1:10)
student_matrix

#selecting an element from matrix
student_matrix[4,1]

summary(student_matrix)

#data frames in R
student_names=c('Ram', 'Shyama','Jaduri', 'Madhu','Kumrali','Kadu')
study_hours=c(8,9,10,9,12,7)
sub_marks=c(78,65,78,90,98,38)
Gender=c('Male','Female','Female','Male','Female',"Male")
Male=c(TRUE,FALSE,FALSE,TRUE,FALSE,TRUE)

stu_data=data.frame(student_names,study_hours,sub_marks,Gender)
stu_data
summary(stu_data)

mean(stu_data$study_hours)
