library(ggplot2)
avocado <- read.csv("C:/Users/csheldon-hess/Dropbox/CCAC/DAT-204/avocado.csv", stringsAsFactors=FALSE)

#a

years <- unique(avocado$year)
years

#b
# set up our empty vector
volSumByYear <- vector()
# bounce through the years
for(i in 1:length(years)) {
  # sum the total volume column for the year in question
  yearSum <- sum(avocado$Total.Volume[avocado$year == years[i]])
  # append this year's sum to the vector
  volSumByYear <- c(volSumByYear, yearSum)
}
# print
volSumByYear

# c
names(volSumByYear) <- years

# d
qplot(years, volSumByYear, main="Volume of Avocado Sales by Year")

