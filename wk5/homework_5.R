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

# Question 3 - Unfinished due to issues with the For Loop

# make empty vector to pull volumes into later 
volume <- vector()

# pull out only year and volumes
year_avos <- avocados[c("year","Total.Volume") ]

# check df
head(year_avos)

#for (i in 1:length(year_avos)) {
#  if (year_avos$year[i] == 2015){
#    sum2015 = sum(avocados["Total.Volume"])
    
#  }
  
#}

#sum2015
  
#for (i in 1:length(avocados$year)) {
 # if (avocados$year[i] = 2016){
  #  sum2016 = sum(avocados["Total.Volume"])
    
#  }
  
#}

#sum2016

#Question 4

library('ggplot2')
#?qplot

# tried to use ggplot to create a bar graph showing total volume by year
# after researching ggplot and qplot, I discovered, I have to use ggplot to 
# force the bar chart to count by identity rather than by occurrence. However,
# I am getting an error that "year" is not found. Commenting out the attempt

#ggplot(data = avocados, aes_(x = year, y = Total.Volume) + geom_bar(stat = "identity"))

# I found out that even though there are 54 different regions contained 
# in this dataset, only two types of avocados are sold in all regions. I also
# found out that the highest average price is $3.25

# pull out unique regions and count length of vector
markets <- unique(avocados$region)
markets       
length(markets)

# Found the highest average price is $3.25 by calling max on Average Price
max(avocados$AveragePrice)

# Found that there are two types of avocadoes sold - conventional and organic - by
# calling unique on the type column
types <- unique(avocados$type)
types

type_df <- avocados[c("year","type") ]
head(type_df)

# plot the types of avocados using qplot 
qplot(type_df$type, main = "Types of Avocados Sold", xlab = "Type",
      ylab = "Quantity", color = I("black"), fill = I("violet"))
