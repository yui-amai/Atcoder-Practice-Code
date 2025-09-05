# ABC418 B - You're a teapot
# See problem: https://atcoder.jp/contests/abc418/tasks/abc418_b
# 2025-08-09 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
n <- nchar(input)
S <- strsplit(input, "", fixed = TRUE)[[1]]

pref <- integer(n + 1)
for (i in 1:n) pref[i + 1] <- pref[i] + as.integer(S[i] == "t")

ans <- 0.0
for (i in 1:n) {
  if (S[i] != "t" || i + 2 > n) next
  for (j in (i + 2):n) {
    if (S[j] != "t") next
    L <- j - i - 1
    count <- pref[j] - pref[i + 1]
    ratio <- count / L
    if (ratio > ans) ans <- ratio
  }
}
cat(sprintf("%.10f\n", ans))
