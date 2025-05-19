N <- scan("stdin", what = integer(), nmax=1, quiet = TRUE)
moji <- function(){
  if (N %% 2 == 1){
   for (i in 1:N){
      if (i == (N+1)/2) {
        cat("=")
      } else {
        cat ("-")
      }
     } 
  } else {
     for (i in 1:N){
     if (i == N/2 | i== N / 2 + 1){
       cat("=")
     } else {
       cat("-")
       }
     }
    }
  cat("\n")
}
moji()
