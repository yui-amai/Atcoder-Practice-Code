# ABC238 B - Pizza
# See problem: https://atcoder.jp/contests/abc238/tasks/abc238_b
# 2025-08-26 AC+ (ADT　20250826　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

cuts <- c(0L, cumsum(A) %% 360L)
cuts <- sort(unique(cuts))

gaps <- diff(c(cuts, cuts[1] + 360L))
cat(max(gaps), "\n")
