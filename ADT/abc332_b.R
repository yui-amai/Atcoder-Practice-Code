# ABC332 B - Glass and Mug
# See problem: https://atcoder.jp/contests/abc332/tasks/abc332_b
# 2025-09-02 AC+ (ADT　20250902　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
K <- input[1]
G <- input[2]
M <- input[3]

g <- 0L
m <- 0L

for (i in seq_len(K)) {
  if (g == G) {
    g <- 0L
  } else if (m == 0) {
    m <- M
  } else {
    pour <- min(G - g, m)
    g <- g + pour
    m <- m - pour
  }
}

cat(g, m, "\n")
