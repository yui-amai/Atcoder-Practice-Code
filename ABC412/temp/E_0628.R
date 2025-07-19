input <- scan(file = "stdin", what = numeric(), quiet = TRUE)
l <- input[1]
r <- input[2]
sqrt_r <- floor(sqrt(r))
is_small_prime <- rep(TRUE, sqrt_r + 1)
is_small_prime[1] <- FALSE # 1 不是素数

for (p in 2:floor(sqrt(sqrt_r))) {
  if (is_small_prime[p]) {
    start <- p * p
    if (start <= sqrt_r) {
      idxs <- seq(start, sqrt_r, by = p)
      if (length(idxs) > 0) {
        is_small_prime[idxs] <- FALSE
      }
    }
  }
}
small_primes <- which(is_small_prime) # 2,3,5,7,...
n <- r - l + 1
is_prime_seg <- rep(TRUE, n) # 假设都素数

for (p in small_primes) {
  p2 <- p * p
  if (p2 > r) break
  # 找到区间内 >= p2 的第一个 p 的倍数
  start <- max(p2, ceiling(l / p) * p)
  # 在向量里把这些位置标记为 FALSE
  idxs <- seq(start, r, by = p) - l + 1
  is_prime_seg[idxs] <- FALSE
}

# 1 不是素数，如果 l=1，要把第一位也标记为 FALSE
if (l == 1) is_prime_seg[1] <- FALSE

# 我们要统计的是 (l,r] 中的素数 p^1，所以无论 l 是否素数，都把第一个元素去掉
is_prime_seg[1] <- FALSE

cnt_primes <- sum(is_prime_seg) # (l,r] 中的素数个数

cnt_powers <- 0L
for (p in small_primes) {
  x <- p * p # 从 p^2 开始
  while (x <= r) {
    if (x > l) cnt_powers <- cnt_powers + 1L
    x <- x * p
  }
}
# 答案 = 1（算上 A_l 的初始那一格） + 素数个数 + 素数幂个数
ans <- 1L + cnt_primes + cnt_powers
cat(ans, "\n")
