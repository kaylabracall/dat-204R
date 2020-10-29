<<<<<<< HEAD
# Kayla Bracall
# Homework 5 (for real)

# Question 1 

# create vector 
s <- seq(from=2, to=98, by=3)

# What are the first 5 values of s?
s[1:5]
# 2, 5, 8, 11, 14

# What are the first, third, tenth, and twenty first values of s?
s[c(1,3,10,21)]
# 2, 8, 29, 62

# Return all the values of s except the second, eighteenth, and thirty-second value.
s[c(-2, -18,-32)]
# 2  8 11 14 17 20 23 26 29 32 35 38 41 44 47 50 56 59 62 65 68 71 74 77 80 83 86 89 92 98

# Return all the even values of s

# create a condition where the remainder of dividing by two is zero
evens <- s%%2 == 0

evens # just testing

# apply condition to vector 
s[evens ]


# Question 2 

# define objects
A = TRUE
B = TRUE
C = FALSE
D = TRUE

A & B
# TRUE

xor(A,B)
# FALSE

(A & C) | D
# TRUE

(A|D) & C
# FALSE

!(A & C)
# TRUE

!(A & B) | C
# FALSE

# Question 3

#create a vector with numbers 1-1000
#original_vector <- c(1:1000)
#original_vector

# pull out numbers divisible by two into new vector
#divs_by_two <- original_vector%%2 != 0

# apply condition to vector and pull out numbers divisible by two into new vector
#vector_2 <- original_vector[divs_by_two]
#vector_2

# pull out numbers divisible by three into new vector

# check length of new vector 


# for loop
library(ggplot2)
avocado <- read.csv("avocado.csv", stringsAsFactors=FALSE)


years <- unique(avocado$year)
years
vol_years <- vector()
for(i in 1:length(years)) {
  yearSum <- sum(avocado$Total.Volume[avocado$year == years[i]])
  vol_years <- c(vol_years, yearSum)
  
}

vol_years

