# Kayla Bracall
# Homework 7


# Question 1 
# a. Use a loop to generate a vector with the first 20 elements in this series.

fancy_vector <- vector() # create empty vector 

for (n in 1:20) { # define range 
  n = (n^2 + n) /2 # do the math
 # print(n) # just checking to see that it worked
  fancy_vector <- c(fancy_vector, n) # concatenate to fancy vector
}
fancy_vector

# b Use another loop to create another vector with only the even elements from the vector from a.
even_vector <-  vector() #create empty vector 

for (x in 1:20) { # define range 
  x = (x^2 + x)/ 2 # do the math 
  if(x %% 2 == 0) { # pull out only even numbers
    #print(x)
    even_vector <- c(even_vector, x) #concatenate 
  }
}
even_vector
# c. Generate the answers to a and b without using a loop.
val <- 1
val2 <- (2^2 + 2)/ 2
val3 <- (3^2 + 3)/ 2
val4 <- (4^2 + 4)/ 2
val5 <- (5^2 + 5)/ 2
val6 <- (6^2 + 6)/ 2
val7 <- (7^2 + 7)/ 2
val8 <- (8^2 + 8)/ 2
val9 <- (9^2 + 9)/ 2
val10 <- (10^2 + 10)/ 2
val11 <- (11^2 + 11)/ 2
val12 <- (12^2 + 12)/ 2
val13 <- (13^2 + 13)/ 2
val14 <- (14^2 + 14)/ 2
val15 <- (15^2 + 15)/ 2
val16 <- (16^2 + 16)/ 2
val17 <- (17^2 + 17)/ 2
val18 <- (18^2 + 18)/ 2
val19 <- (19^2 + 19)/ 2
val20 <- (20^2 + 20)/ 2

manual_vector <- c(val, val2, val3, val4, val5, val6, val7, val8, val9, val10,
                   val11, val12, val13, val14, val15, val16, val17, val18, val19, val20)
manual_vector

tf_vec <- c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, 
            FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)

manual_vector[tf_vec]

#
# Question 2 
# a Create a vector of length 20 where the first value is 1 and 
# each value after that is three times the preceding value minus 1.

val <- 1 # set value
repeat_vector <- (1) # set first value of vector 

repeat {
  val <-(val * 3) - 1 # do the math 
  repeat_vector <- c(repeat_vector, val) #concatenate 
  if(length(repeat_vector) == 20){ # break onece length of vector equals 20
    break
  }
  
}

repeat_vector

# b Loop through the vector to change all odd elements to even by adding 1.  
# Do not change the elements that are already even.

val <- 1 # set value
repeat_vector <- vector() # set empty vector 

repeat {
  val <-(val * 3) - 1 # do the math 
  if(val%% 2 == 0){
    val <- val
    }else {
      val <- val +1
    }
  
  repeat_vector <- c(repeat_vector, val) #concatenate 
  if(length(repeat_vector) == 20){ # break onece length of vector equals 20
    break
  }
  
}  

repeat_vector

#Using the original vector you created in a (you must recreate it since you 
# changed it in b), recreate the answer from b without using any loops.

val <- 1 # set value
repeat_vector <- (1) # set first value of vector 

repeat {
  val <-(val * 3) - 1 # do the math 
  repeat_vector <- c(repeat_vector, val) #concatenate 
  if(length(repeat_vector) == 20){ # break once length of vector equals 20
    break
  }
  
}

tf_vec <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE,
            TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)

repeat_vector

# Question 3
# Using the superbowl.csv data, create a function called winCount() that receives an 
# NFL team as a character string and returns the number of wins that team has had.  
# If the team provided is not on the list of winners, the function should return
# “Sorry, that team has not won yet.” 

install.packages("stringr")
library(stringr)

soup_bowl <- read.csv("superbowl.csv", stringsAsFactors=FALSE)
#head(soup_bowl)
winners <- unique(soup_bowl$Winner)
winners

# wins <- vector()
# 
# for (team in winners) {
#   temp <- (soup_bowl$Winner[soup_bowl$Winner == team])
#   wins <- c(wins, temp)
# }

getWinner <- function(search_name) {
  # go through list of winning teams
  exact_match <- 0
  for (team in winners) {
    # if we find a winner
    if (str_detect(tolower(team), search_name)){
      # save it
      exact_match <- team
    } else
      exact_match <- print("Sorry, that team has not won yet")
  }
  return(exact_match)
}

winner <- readline(prompt = "Enter team name: ")

cat(getWinner(winner))