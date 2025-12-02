# ABC300 A - N-choice question
# See problem: https://atcoder.jp/contests/abc300/tasks/abc300_a
# 2025-12-02 AC+ (ADT　20251202　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[2]
B <- input[3]
C <- input[-(1:3)]

ab <- A + B
ans <- which(C == ab)

cat(ans, "\n")
