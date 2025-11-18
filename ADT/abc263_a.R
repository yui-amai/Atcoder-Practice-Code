# ABC263 A - Full House
# See problem: https://atcoder.jp/contests/abc263/tasks/abc263_a
# 2025-11-18 AC+ (ADT　20251118　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)

cnt <- table(input)
ans <- sum(cnt == 3) == 1 && sum(cnt == 2) == 1
cat(if (ans) "Yes\n" else "No\n")
