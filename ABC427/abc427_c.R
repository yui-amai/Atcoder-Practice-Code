# ABC427 C - Bipartize
# See problem: https://atcoder.jp/contests/abc427/tasks/abc427_c
# 2025-10-11 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
u <- input[seq(3, by = 2, length.out = M)]
v <- input[seq(4, by = 2, length.out = M)]

keep <- 0
lim <- bitwShiftL(1, N) - 1

for (m in 0:lim) {
  cnt <- 0
  for (i in 1:M) {
    u_color <- bitwAnd(bitwShiftR(m, u[i] - 1), 1)
    v_color <- bitwAnd(bitwShiftR(m, v[i] - 1), 1)
    if (u_color != v_color) cnt <- cnt + 1
  }
  if (cnt > keep) keep <- cnt
}

ans <- M - keep
cat(ans, "\n")
