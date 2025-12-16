# ABC214 B - How many?
# See problem: https://atcoder.jp/contests/abc214/tasks/abc214_b
# 2025-12-16 AC+ (ADT　20251216　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
S <- input[1]
T <- input[2]

ans <- 0L

for (a in 0:S) {
  for (b in 0:(S - a)) {
    c_max <- S - a - b
    ab <- a * b
    if (ab == 0L) {
      ans <- ans + (c_max + 1L)
    } else {
      c_lim <- as.integer(T %/% ab)
      if (c_lim > c_max) c_lim <- c_max
      if (c_lim >= 0L) ans <- ans + (c_lim + 1L)
    }
  }
}
cat(ans, "\n")
