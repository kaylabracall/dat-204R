# Kayla Bracall
# Homework 7


# Question 1 
# a. Use a loop to generate a vector with the first 20 elements in this series.

fancy_vector <- vector() # create empty vector 

for (n in 1:20) { # define range 
  n = (n^2 + n) /2 # do the math
  print(n) # just checking to see that it worked
  fancy_vector <- c(fancy_vector, n) # concatenate to fancy vector
}
fancy_vector

# b. Use another loop to create another vector with only the even elements from the vector from a.
even_vector <-  vector() #create empty vector 

for (x in 1:20) { # define range 
  if(x %% 2 == 0) { # pull out only even numbers
    x = (x^2 + x)/ 2 # do the math 
    print(x)
    even_vector <- c(even_vector, x)
  }
}
even_vector
# c. Generate the answers to a and b without using a loop.

# Question 2 
# a Create a vector of length 20 where the first value is 1 and 
# each value after that is three times the preceding value minus 1.

val <- 1
repeat_vector <- (1)

repeat {
 
  count <- count + 1 
  val <-(val * 3) - 1
  repeat_vector <- c(repeat_vector, val)
  if(length(repeat_vector) == 20){
    break
  }
  
}

repeat_vector

# b Loop through the vector to change all odd elements to even by adding 1.  
# Do not change the elements that are already even.

for (x in repeat_vector){
  if(x %% 2 !=0){
    x <- x +1
    x
  }
  
}
repeat_vector <- c(repeat_vector, x)
repeat_vector
# Question 3

soup_bowl <- read.csv("superbowl.csv", stringsAsFactors=FALSE)
