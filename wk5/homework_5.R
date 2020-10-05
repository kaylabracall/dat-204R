#Kayla Bracall
# Homework 4


#Question 1 

#import dataset 
avocados <- read.csv('avocado.csv', stringsAsFactors = FALSE)

#just checking our df
head(avocados) 
class(avocados)

# Question 2 
# pull out unique years in df  
years <- unique(avocados$year)
years

#Question 3

volume <- vector()

for (i in 1:length(avocados$year)) {
  sum2015 = 0
  yr2015 <- (avocados$year[i])
  # yr2016 <- (avocados$year[i])
  # yr2017 <- (avocados$year[i])
  # yr2018 <- (avocados$year[i])
  if (avocados$year[i] == 2015){
    sum2015 = sum2015 + avocados$volume
  }
  
}

sum2015  
  

  

