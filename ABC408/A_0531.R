input <- scan("stdin", quiet = TRUE)

N <- input[1]
S <- input[2]
T <- c(0, input[3:(N + 2)])

timeout <- function() {
  for (i in 1:N) {
    if (T[i + 1] - T[i] > S + 0.5) {
      cat("No\n")
      return(invisible())
    }
  }
  cat("Yes\n")
}

timeout()
