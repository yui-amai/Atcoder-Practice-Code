# ABC424 E - Cut in Half
# See problem: https://atcoder.jp/contests/abc424/tasks/abc424_e
# 2025-09-20 TLE

options(scipen = 100, digits = 15)
input <- scan("stdin", what = double(), quiet = TRUE)
ptr <- 1L
T <- as.integer(input[ptr])
ptr <- ptr + 1L
ans <- character(T)

for (tc in 1:T) {
  N <- as.integer(input[ptr])
  K <- as.integer(input[ptr + 1L])
  X <- as.integer(input[ptr + 2L])
  ptr <- ptr + 3L
  A <- input[ptr:(ptr + N - 1L)]
  ptr <- ptr + N

  target <- X + K
  lo <- 0.0
  hi <- max(A)

  for (it in 1:60) {
    mid <- (lo + hi) / 2
    if (mid <= 0) {
      lo <- hi
      break
    }

    tot <- 0.0
    for (i in 1:N) {
      ai <- A[i]
      if (ai < mid) next
      tlev <- floor(log(ai / mid, base = 2))
      if (tlev >= 60) {
        tot <- target
        break
      }
      tot <- tot + (2^(tlev + 1) - 1)
      if (tot >= target) {
        tot <- target
        break
      }
    }

    if (tot >= target) lo <- mid else hi <- mid
  }

  ans[tc] <- sprintf("%.12f", lo)
}

cat(paste(ans, collapse = "\n"), "\n")
