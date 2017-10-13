# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
library("stringr")
CompareLength <- function(thing, thing2) {
  difference <- nchar(thing) - nchar(thing2)
  return(paste("The difference in lengths is ", abs(difference), sep=""))
}

# Pass two vectors of different length to your `CompareLength` function
trial <- CompareLength("Hello", "Goodbye")

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(thing, thing2) {
  difference <- abs(nchar(thing)-nchar(thing2))
  if(nchar(thing) > nchar(thing2)) {
    return(paste("Your first vector is longer by ", difference, sep=""))
  } else {
    return(paste("Your second vector is longer by ", difference, sep=""))
  }
}

# Pass two vectors to your `DescribeDifference` function
thing <- "Hello"
DescribeDifference(thing, "Goodbye")

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer