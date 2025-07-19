options(scipen = 100, digits = 15)
# --- 读取输入 ---
con <- file("stdin", "r")
lines <- readLines(con)
close(con)

tok <- as.integer(unlist(strsplit(lines, "\\s+")))
N <- tok[1]
M <- tok[2]
idx <- 3

# --- 建图（邻接表） ---
G <- vector("list", N)
for (i in seq_len(M)) {
  a <- tok[idx]
  b <- tok[idx + 1]
  w <- tok[idx + 2]
  idx <- idx + 3
  G[[a]] <- append(G[[a]], list(c(b, w)))
}

# --- 初始化 ---
dist <- integer(N) # 灯状态（XOR 值）
vis <- logical(N) # 是否访问
basis <- integer(0) # 工具箱：收集环的 XOR

# --- 插入新钥匙到线性基 ---
insert_basis <- function(x) {
  for (b in basis) {
    x <- min(x, bitwXor(x, b))
  }
  if (x != 0L) {
    basis <<- sort(c(basis, x), decreasing = TRUE)
  }
}

# --- 深度优先搜索 ---
dfs <- function(u) {
  vis[u] <<- TRUE
  for (edge in G[[u]]) {
    v <- edge[1]
    w <- edge[2]
    if (!vis[v]) {
      dist[v] <<- bitwXor(dist[u], w)
      dfs(v)
    } else {
      cycle <- bitwXor(dist[u], bitwXor(w, dist[v]))
      if (cycle != 0L) insert_basis(cycle)
    }
  }
}

# --- 主流程 ---
dfs(1L)

if (!vis[N]) {
  cat(-1L, "\n")
} else {
  res <- dist[N]
  for (b in basis) {
    res <- min(res, bitwXor(res, b))
  }
  cat(res, "\n")
}
