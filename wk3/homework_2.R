# Kayla Bracall
# Homework 2

library('ggplot2')

?mpg
?qplot

mpg

# find city mpg of manual vs automatic transmissions
qplot(trans, cty, data = mpg, geom = "boxplot", fill = trans, 
      main = "City MPG by Transmission Type", ylab = "City MPG", 
      xlab = "Transmission Type")

# find highway mpg of manual vs automatic transmissions
qplot(trans, hwy, data = mpg, geom = "boxplot", fill = trans,
      main = "Highway MPG by Transmission Type", ylab = "Highway MPG", 
      xlab = "Transmission Type")

# find mpg by year
#qplot(year, cty, data = mpg)

# find city mpg by model
#qplot(model, cty, data = mpg)

# find city mpg by car type
qplot(class, cty, data = mpg, geom = "boxplot", fill = class, 
      main = "City MPG by Car Type", ylab = "City MPG", xlab = "Car Type")

# find highway mpg by car type
qplot(class, hwy, data = mpg, geom = "boxplot", fill = class, 
      main = "Highway MPG by Car Type", ylab = "Highway MPG", xlab = "Car Type")



