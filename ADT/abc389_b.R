# ABC389 B - tcaF
# See problem: https://atcoder.jp/contests/abc389/tasks/abc389_b
# 2025-11-05 AC+ (ADT　20251105　EASY)

X <- scan("stdin", what = numeric(), quiet = TRUE)

for (i in 2:20) {
  fact <- 1
  for (j in 1:i) {
    fact <- fact * j
  }

  if (fact == X) {
    cat(i, "\n")
    break
  }
}

# max = 2432902008176640000(=20!)
