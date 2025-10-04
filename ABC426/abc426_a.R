# ABC426 A - OS Versions
# See problem: https://atcoder.jp/contests/abc426/tasks/abc426_a
# 2025-10-04 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
X <- input[1]
Y <- input[2]

rank <- c(Ocelot = 1, Serval = 2, Lynx = 3)

if (rank[X] >= rank[Y]) cat("Yes\n") else cat("No\n")
