# 编码助手：这是基于“从后往前”思路的解决方案
# memory小了，但还是超时

# 1. 读入所有数据
# 因为要逆序处理，所以必须先把所有查询读入内存
tok <- scan("stdin", what = "", quiet = TRUE)
ptr <- 1
N <- as.integer(tok[ptr])
Q <- as.integer(tok[ptr + 1])
ptr <- ptr + 2

# 将所有查询存储到一个列表中，方便逆序访问
queries <- vector("list", Q)
for (i in seq_len(Q)) {
  type <- tok[ptr]
  p <- as.integer(tok[ptr + 1])
  s <- if (type == "2") tok[ptr + 2] else ""
  queries[[i]] <- list(type = type, p = p, s = s)

  ptr <- ptr + 2
  if (type == "2") ptr <- ptr + 1
}

# 2. 从后往前追踪
p_track <- 0L # 0 代表服务器，1-N 代表PC。我们开始追踪服务器的来源。
ans_pieces <- list() # 用来存储倒着收集到的字符串片段

for (t in Q:1) {
  query <- queries[[t]]
  type <- query$type
  p <- query$p

  if (type == "1") { # 下载
    # 如果我们正在追踪的PC p接收了服务器的数据...
    if (p_track == p) {
      # ...那么我们接下来就要去追踪服务器了
      p_track <- 0L
    }
  } else if (type == "2") { # 追加
    # 如果我们正在追踪的PC p追加了数据...
    if (p_track == p) {
      # ...那么这个数据s是最终答案的一部分。记录它。
      # 因为是倒着推，所以是把s加到答案的“前面”
      ans_pieces <- c(query$s, ans_pieces)
    }
  } else { # type == "3", 上传
    # 如果我们正在追踪的服务器接收了PC p的数据...
    if (p_track == 0) {
      # ...那么我们接下来就要去追踪PC p了
      p_track <- p
    }
  }
}

# 3. 输出结果
# 如果最终追踪到的是某个PC，它的初始状态是空。
# 如果最终追踪到的是服务器，它的初始状态也是空。
# 所以，我们只需要拼接收集到的片段即可。
cat(paste0(ans_pieces, collapse = ""), "\n")
