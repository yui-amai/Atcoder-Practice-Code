# ABC236 B - Who is missing?
# See problem: https://atcoder.jp/contests/abc236/tasks/abc236_b
# 2025-09-16 AC+ (ADT　20250916　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

table <- table(A)
missing <- as.integer(names(table[table != 4]))
cat(missing, "\n")
