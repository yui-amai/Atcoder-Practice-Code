input <- scan("stdin", what = integer(), nmax= 7, quiet = TRUE)
full <- function(){
  freq_input <- table(input)
  freq <- as.numeric(freq_input)
  if (any(freq == 3) && any(freq == 2) | 
      any(freq == 4) && any(freq == 2) | 
      any(freq == 5) && any(freq == 2) | 
      sum(freq == 3) == 2 && any(freq == 1) | 
      any(freq == 4) && any(freq == 3)){
    cat("Yes\n")
  } else {
    cat("No\n")
  }
}
full()
