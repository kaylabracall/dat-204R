# Kayla Bracall
# Homework 6

# Create an object in the global environment called globVar and assign a value of 1 
# to it.Run a for loop 20 times and add 2 to globVar during each iteration.
# Check the value of globVar.  Did it update? Now, reset the value of globVar to 1.
# Next, create a function that runs the same loop and then run that function.
# Did globVar update this time? Why or why not?

# set global variable 
globVar <- 1

# create vector to use in for loop 
adder <- 1:19 

# add 2 to globVar 20 times 
for (i in 1:length(adder)) {
  globVar <- globVar +2 
}

# now globVar is 41
globVar

# reset globVar
globVar <- 1 

# create function that adds 2 to globVar 20 times 
changer <- function(){
  for (i in 1:length(adder)) {
    globVar <- globVar +2 
  }
  globVar # just testing to make sure it's adding 
}
changer()

# globVar is unchanged 
globVar
