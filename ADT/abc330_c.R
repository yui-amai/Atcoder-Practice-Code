# ABC330 C - Minimize Abs 2
# See problem: https://atcoder.jp/contests/abc330/tasks/abc330_c
# 2025-10-02 RE->AC+ (ADT　20251002　EASY)

options(scipen = 100, digits = 15)
D <- scan("stdin", what = double(), quiet = TRUE)

ans <- D
x <- 0

repeat {
  xsq <- as.double(x) * x
  if (xsq - D > ans) break

  t <- D - xsq
  if (t >= 0) {
    y <- floor(sqrt(t))
    val1 <- abs(xsq + as.double(y) * y - D)
    if (val1 < ans) ans <- val1
    yy <- y + 1
    val2 <- abs(xsq + as.double(yy) * yy - D)
    if (val2 < ans) ans <- val2
  } else {
    val <- abs(xsq - D)
    if (val < ans) ans <- val
  }
  x <- x + 1
}

cat(ans, "\n")
