# ABC391 A - Lucky Direction
# See problem: https://atcoder.jp/contests/abc391/tasks/abc391_a
# 2025-09-10 AC+ (ADT　20250910　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

opposite <- c(
  "N"  = "S",
  "S"  = "N",
  "E"  = "W",
  "W"  = "E",
  "NE" = "SW",
  "SW" = "NE",
  "NW" = "SE",
  "SE" = "NW"
)

cat(opposite[input], "\n")
