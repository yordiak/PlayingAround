# fibo is a custom-specific function that implements                                         #
# the Fibonacci sequence for any positive number in R.                                       #
                                                                                             #
# fibo takes two arguments: n = the initial number                                           #
#                           trms = the total number of terms of a Fibonacci sequence         #
                                                                                             #
# Credit: George Diakoulakis                                                                 #
                                                                                             #
##############################################################################################

fibo <- function(n,trms){
  
  f <- NULL                                  # initiate fibonacci vector
  
  for (i in 1:trms){
    if (i==1){f <- c(f,n)}
    else if (i==2){f <- c(f,n)}
    else {f <- c(f,f[i-1]+f[i-2])}
  }
    print(f)                                   # printing the Fibonacci sequence
}
