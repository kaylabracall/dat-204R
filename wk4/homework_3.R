# Kayla Bracall
# Homework 3

# Question 1 
#1a 
2^53
# 2^53 is equal to 9.007199 x 10^15

#1b
# the exponent to the answer to #1 is 15, therefore bignum1 is 15 digits
bignum1 <- 999999999999999
bignum2 <- 999999999999998

bignum1 - bignum2 # this computes to 1, so we know the answer is correct

#1c
bignum1 <- (bignum1 * 10) + 9
bignum1 # this becomes 1 x 10^16
bignum2 <- (bignum2 * 10) + 18
bignum2 # this also becomes 1 x 10^16

bignum1 - bignum2 # 

# Question 2 

# assign objects 
a <- 1.0
b <- 1.2
c <- 1.5
d <- 1.9
e <- 1.99999

# coerce objects to integers 
as.integer(a)
as.integer(b)
as.integer(c)
as.integer(d)
as.integer(e)

# All of the above objects, when coerced to integers, equal 1. This is to be 
# expected as coercing an object to integer truncates it at the decimal point

# Question 3

longfloat <- 1.999999999999999

# convert to integer
as.integer(longfloat)

#longfloat coereced to an integer equals 1. I expected this result because
# R truncates a double at the decimal to make it an integer

longfloat2 <- (1.999999999999999 / 10) + 1.8
longfloat2 # R rounds this to 2 
as.integer(longfloat2) 

# Question 4

#import package
library('ggplot2')
stud_data <- Student_Data

# Create histogram showing student grades. Label x axis "Grades." Set binwidth
# to one. Label graph "Student Grades"
qplot(grade, data = stud_data, geom = "histogram", main = "Student Grades", 
      xlab = "Grades", binwidth = 1, fill = grade)

# pull out column that indicates which students attended study session
studiers <- stud_data["study.session"]
head(studiers)

# pull out only cells that have values
has_val <- sum(!is.na(studiers))
has_val

# pull out True responses
good_studiers <- sum(studiers == "TRUE")

# find percentage 
perc <- good_studiers / has_val * 100
perc # We find that 63.16% of students attended the study session

# pull out gender colulmn
genders = stud_data["gender"]

# sum up number ofstudents who identify as male
men <- sum(genders == "Male")
men # we find that 9 students in the class are men 


