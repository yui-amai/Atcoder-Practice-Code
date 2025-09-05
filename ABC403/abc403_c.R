# ABC403 C - 403 Forbidden
# See problem: https://atcoder.jp/contests/abc403/tasks/abc403_c
# 2025-04-27 TLE->AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
Q <- input[3]

user_pages <- vector("list", N)
full_access <- rep(FALSE, N)
index <- 4
for (i in 1:N) {
  user_pages[[i]] <- new.env()
}
for (i in 1:Q) {
  type <- input[index]
  if (type == 1) {
    X <- input[index + 1]
    Y <- input[index + 2]
    assign(as.character(Y), TRUE, envir = user_pages[[X]])
    index <- index + 3
  } else if (type == 2) {
    X <- input[index + 1]
    full_access[X] <- TRUE
    index <- index + 2
  } else if (type == 3) {
    X <- input[index + 1]
    Y <- input[index + 2]
    if (full_access[X] || exists(as.character(Y), envir = user_pages[[X]], inherits = FALSE)) {
      cat("Yes\n")
    } else {
      cat("No\n")
    }
    index <- index + 3
  }
}
