#Kayla Bracall
#9/10/20
#Homework 1

#Question 1
a <-  (4^2 +9)/(13*2)
a
# 0.9615385

b <- (18+sqrt(4 + 9^3)-9)/(9^(1/3))
b
# 17.34256

c <- ((5/4)+37-8^3)/(sqrt(5)/(37+9))
c
# -9745.902

#Question 2
die_1 <- c(1:4, 6, 6)
die_2 <- 1:8
roll_dice_function <- function(){
  sample(die_1, 1) + sample(die_2, 1, prob = c(1/12, 1/12, 1/12, 1/12, 1/12, 1/12, 2/12, 4/12))
}

roll_dice_function()


#Question 3

#rolls <- replicate(3, roll_dice_function())
#roll dice three times 

roll_dice_3_times <- function(){
  sample(die_1, 3) + sample(die_2, 3, prob = c(1/12, 1/12, 1/12, 1/12, 1/12, 1/12, 2/12, 4/12))
}
roll_dice_3_times()

rolls_1000 <- replicate(1000, roll_dice_3_times())
#roll dice 1000 times 

probability_guess <- sum(rolls_1000 >= 13)
probability_guess # number of total rolls greater than 13 (?)

prob = probability_guess / 1000 * 100

prob

hist(rolls_1000)

# To my understanding, the function provided in Slack of sum(roll_function >= 13)
# sums up the total number of rolls that have a sum of 13 or greater 
# if we divide this by 1000, the number of rolls replicated, we get a probability 
# of somewhere between 16% and 17%. However, that calculates the probability 
# of rolling the sum of 13 or more in general. It does not take into account
# the first three rolls. Furthermore, the histogram of the function that replicates
# 1ooo rolls suggests this might be higher
# 