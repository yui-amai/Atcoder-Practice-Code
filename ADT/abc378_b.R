# ABC378 B - Garbage Collection
# See problem: https://atcoder.jp/contests/abc378/tasks/abc378_b
# 2025-11-13 AC+ (ADT　20251113　EASY)

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)

ptr <- 1

N <- input[ptr]
ptr <- ptr + 1

q <- integer(N)
r <- integer(N)
for (i in 1:N) {
  q[i] <- input[ptr]
  r[i] <- input[ptr + 1]
  ptr <- ptr + 2
}

Q <- input[ptr]
ptr <- ptr + 1

for (j in 1:Q) {
  t <- input[ptr]
  d <- input[ptr + 1]
  ptr <- ptr + 2

  qi <- q[t]
  ri <- r[t]

  rem <- d %% qi
  delta <- (ri - rem + qi) %% qi
  ans <- d + delta

  cat(ans, "\n")
}
