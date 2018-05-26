readnumber <- function()
{ 
  number <- readline(prompt="Enter an integer: ")
  if(!grepl("^[0-9]+$",number))
  {
    return(readinteger())
  }
  return(as.integer(number))
}

# real program start here

realnumber <- round(runif(1) * 100, digits = 0)
usernumber <- -1

cat("Guess a number between 0 and 100.\n")

while(realnumber != usernumber)
{ 
  usernumber <- readnumber()
  if (realnumber == usernumber)
  {
    cat("You got it,", usernumber, "is right!\n")
  }
  else if (realnumber > usernumber)
  {
    cat("It's bigger than", usernumber, "!\n")
  }
  else if(realnumber < usernumber)
  {
    cat("It's smaller than", usernumber, "!\n")
  }
}