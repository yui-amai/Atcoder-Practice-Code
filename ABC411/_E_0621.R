# ---------------------------------------------------
# R：N 个六面骰子“最大值的期望” mod 998244353
# 复杂度：O(N log N + 6N)，AtCoder 3s / 1GiB 足够
# ---------------------------------------------------

# -------- 模常量 和 工具函数 --------
MOD <- 998244353L

# 快速幂：计算 base^exp mod MOD
modpow <- function(base, exp) {
  result <- 1L
  base <- base %% MOD
  while (exp > 0L) {
    if (exp %% 2L == 1L) {
      result <- (result * base) %% MOD
    }
    base <- (base * base) %% MOD
    exp <- exp %/% 2L
  }
  result
}

# 模逆元：n^(MOD-2) mod
modinv <- function(n) {
  modpow(n, MOD - 2L)
}


# -------- 1. 读入并展开所有事件 --------
# 输入格式：
#   第 1 行：N
#   接下去 N 行：每行 6 个整数，表示第 i 个骰子的 6 个面
tok <- scan("stdin", what = integer(), quiet = TRUE)
ptr <- 1L

# 读 N
N <- tok[ptr]
ptr <- ptr + 1L

# 准备存放所有 6N 个事件： (face_value, die_index)
total_events <- 6L * N
events_v <- integer(total_events) # 存面值
events_die <- integer(total_events) # 存是哪一颗骰子
ept <- 1L

# 填充 events_v / events_die
for (i in seq_len(N)) {
  # 读第 i 颗骰子的 6 个面
  for (j in 1:6) {
    v <- tok[ptr]
    ptr <- ptr + 1L
    events_v[ept] <- v
    events_die[ept] <- i
    ept <- ept + 1L
  }
}


# -------- 2. 按面值排序事件 --------
# 这样我们可以按“阈值”从小到大扫一遍
ord <- order(events_v)
events_v <- events_v[ord]
events_die <- events_die[ord]


# -------- 3. 预计算常量：1/6、k/6 及其逆元 --------
# inv6 = 6^{-1} mod
inv6 <- modinv(6L)
# inv_factors[k] = k/6 mod ，k=1..6
inv_factors <- ((1:6) * inv6) %% MOD
# inv_inv_factors[k] = (inv_factors[k])^{-1} mod
inv_inv_factors <- sapply(inv_factors, modinv)


# -------- 4. 初始化状态变量 --------
die_counts <- integer(N) # die_counts[i] = #face ≤ current_threshold for dice i
prod_factors <- integer(N) # prod_factors[i] = die_counts[i]/6 mod
zero_cnt <- N # 还有 zero_cnt 个骰子 die_counts[i]==0
prod_nonzero <- 1L # ∏ （只对 die_counts[i]>0 的 i 做乘积)
prob_le <- 0L # P(max ≤ last_v)，初始 last_v=0 ⇒ 0
last_v <- 0L
ans_sum <- 0L # 累加 Σ_{k=1..max_face} P(max ≥ k)


# -------- 5. 扫描线：遍历每个事件点 --------
ept <- 1L
while (ept <= total_events) {
  v <- events_v[ept] # 当前要“跨过”的阈值

  # --- 5.1 处理区间 (last_v, v-1] 上的贡献 ---
  # 对于 k in (last_v, v-1], P(max ≥ k) = 1 - P(max ≤ last_v) = 1 - prob_le
  gap <- v - last_v - 1L
  if (gap > 0L) {
    # 一口气加上 gap 个相同的概率值
    contrib <- (gap * ((1L - prob_le) %% MOD)) %% MOD
    ans_sum <- (ans_sum + contrib) %% MOD
  }
  # --- 5.2 加上 k = v 本身的贡献 ---
  ans_sum <- (ans_sum + ((1L - prob_le) %% MOD)) %% MOD


  # --- 5.3 处理所有 face == v 事件，增量更新 P(max ≤ *) ---
  while (ept <= total_events && events_v[ept] == v) {
    d <- events_die[ept] # 是第 d 颗骰子
    oldc <- die_counts[d] # 更新前已有多少面 ≤ 上次阈值
    newc <- oldc + 1L
    die_counts[d] <- newc

    # 更新该骰子的概率因子 oldf -> newf
    oldf <- prod_factors[d] # = oldc/6
    newf <- inv_factors[newc] # = newc/6
    prod_factors[d] <- newf

    if (oldc == 0L) {
      # 第一次激活这颗骰子
      zero_cnt <- zero_cnt - 1L
      prod_nonzero <- (prod_nonzero * newf) %% MOD
    } else {
      # 从 oldf 切换到 newf：乘 newf * inv(oldf)
      prod_nonzero <- ((prod_nonzero * newf) %% MOD *
        inv_inv_factors[oldc]) %% MOD
    }

    ept <- ept + 1L
  }

  # --- 5.4 重新计算 P(max ≤ v) ---
  # 只要还有骰子未激活（zero_cnt>0），P(max ≤ v)=0，否则就是 prod_nonzero
  prob_le <- if (zero_cnt > 0L) 0L else prod_nonzero
  last_v <- v
}

# -------- 6. 输出最终答案 --------
# ans_sum = Σ_{k=1..max_face} P(max ≥ k) = E[max]
cat(ans_sum %% MOD, "\n")
