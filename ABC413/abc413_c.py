# ABC413 C - Large Queue
# See problem: https://atcoder.jp/contests/abc413/tasks/abc413_c
# 2025-07-08 AC-

import sys

input_lines = sys.stdin.read().splitlines()
Q = int(input_lines[0])
val = [0] * Q
cnt = [0] * Q
head = 0
tail = 0

idx = 1
for _ in range(Q):
    parts = input_lines[idx].split()
    idx += 1
    if parts[0] == "1":
        c = int(parts[1])
        x = int(parts[2])
        val[tail] = x
        cnt[tail] = c
        tail += 1
    else:
        c = int(parts[1])
        sum_ = 0
        while head < tail and c > 0:
            if cnt[head] <= c:
                sum_ += val[head] * cnt[head]
                c -= cnt[head]
                head += 1
            else:
                sum_ += val[head] * c
                cnt[head] -= c
                c = 0
        print(sum_)