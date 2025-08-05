# ABC386 A - Full House 2
# See problem: https://atcoder.jp/contests/abc386/tasks/abc386_a
# 2025-08-05 AC+ (ADT　20250805　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)

cnt <- table(input)
ans <- any(cnt == 3) || sum(cnt == 2) == 2
cat(if (ans) "Yes\n" else "No\n")
