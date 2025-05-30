options(scipen = 100, digits = 15)
con <- file("stdin", "r")
t <- readLines(con, n = 1)
close(con)

security2 <- function(){
  S <- unlist(strsplit(t, ""))
  a <- length(S)
  digits <- as.integer(S)
  if (a == 1) {
    times <- 1 + digits[1]
  } else {
    count <- sum(digits[-a] < digits[-1])
    times <- a + digits[1] + 10 * count
  }
  cat(times, "\n")
}
security2()