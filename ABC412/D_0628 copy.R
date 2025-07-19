options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
tokens <- as.integer(strsplit(paste(lines, collapse = " "), "\\s+")[[1]])
idx <- 1
N <- tokens[idx]
idx <- idx + 1 # 顶点数 N
M <- tokens[idx]
idx <- idx + 1 # 边数 M
A <- tokens[idx + seq(0, by = 2, length.out = M)]
B <- tokens[idx + seq(1, by = 2, length.out = M)]

# 2. 把输入图编码成位掩码 mask0
#    我们先建立一个 N×N 的索引矩阵 mapping，将无向边 {i,j} 映射到一位
mapping <- matrix(0L, nrow = N, ncol = N)
bit <- 0L
for (i in seq_len(N - 1)) {
  for (j in seq((i + 1), N)) {
    bit <- bit + 1L
    mapping[i, j] <- bit
    mapping[j, i] <- bit
  }
}
# mask0 初始为 0
mask0 <- 0L
for (k in seq_len(M)) {
  i <- A[k]
  j <- B[k]
  pos <- mapping[i, j]
  # 将第 pos 位设为 1
  mask0 <- bitwOr(mask0, bitwShiftL(1L, pos - 1L))
}

# 3. 枚举所有 "度为2" 的图（cycle covers）
#    我们通过遍历所有排列，再过滤出 cycle length ≥3 的那些。
all_masks <- integer(0)
# 递归生成排列并检查
gen_perm <- function(prefix, rem) {
  if (length(rem) == 0L) {
    p <- prefix # 这是一个完整的排列 p[1..N]
    visited <- rep(FALSE, N)
    ok <- TRUE
    mask <- 0L
    # 检测每个 i 属于的循环长度，并为每条边累计掩码
    for (i in seq_len(N)) {
      if (!visited[i]) {
        # 从 i 开始追到循环
        cur <- i
        len <- 0L
        repeat {
          visited[cur] <- TRUE
          nxt <- p[cur]
          # 累计边 {cur, nxt} 到 mask
          ii <- cur
          jj <- nxt
          if (ii > jj) tmp <- ii else tmp <- jj
          if (ii < jj) pos <- mapping[ii, jj] else pos <- mapping[jj, ii]
          mask <- bitwOr(mask, bitwShiftL(1L, pos - 1L))
          len <- len + 1L
          cur <- nxt
          if (cur == i) break
        }
        # 如果某个循环长度 < 3，则不符合度为2的 simple cycle 要求
        if (len < 3L) {
          ok <- FALSE
          break
        }
      }
    }
    # 如果全部循环合法，则收集这个掩码
    if (ok) all_masks <<- c(all_masks, mask)
    return()
  }
  # 继续添加 rem 中的每个元素到 prefix
  for (i in seq_along(rem)) {
    gen_perm(c(prefix, rem[i]), rem[-i])
  }
}
# 从空前缀和全顶点集开始
gen_perm(integer(0), seq_len(N))
# 去重，得到所有无向 cycle-covers
cycle_masks <- unique(all_masks)

# 4. 计算与输入图的对称差（异或），找最少的位翻转数
best <- Inf
for (m in cycle_masks) {
  diff <- bitwXor(mask0, m)
  # 计算二进制中 1 的个数（位计数）
  cnt <- sum(as.integer(intToBits(diff)))
  if (cnt < best) best <- cnt
}

# 5. 输出最少的操作次数
cat(best, "\n")
