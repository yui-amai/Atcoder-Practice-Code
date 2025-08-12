# ABC259 B - Counterclockwise Rotation
# See problem: https://atcoder.jp/contests/abc259/tasks/abc259_b
# 2025-08-12 AC+ (ADT　20250812　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
a <- input[1]
b <- input[2]
d <- input[3]

theta <- d * pi / 180

x <- a * cos(theta) - b * sin(theta)
y <- a * sin(theta) + b * cos(theta)

cat(sprintf("%.10f %.10f\n", x, y))
