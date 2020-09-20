# Kayla Bracall
# Homework 2

library('ggplot2')

?mpg
?qplot

# find city mpg of manual vs automatic transmissions
qplot(trans, cty, data = mpg, geom = "point")

# find highway mpg of manual vs automatic transmissions
qplot(trans, hwy, data = mpg)

# find mpg by year
qplot(year, cty, data = mpg)

# find city mpg by model
qplot(model, cty, data = mpg)

# find city mpg by cary type
qplot(class, cty, data = mpg) + geom_boxplot(fill = '#A4A4A4')

# find highway mpg by cary type
qplot(class, hwy, data = mpg, geom = "boxplot")

