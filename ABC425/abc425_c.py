# ABC425 C - Rotate and Sum Query
# See problem: https://atcoder.jp/contests/abc425/tasks/abc425_c
# 2025-09-27 AC+

import sys

tok = list(map(int, sys.stdin.read().strip().split()))
idx = 0

N = tok[idx]; idx += 1
Q = tok[idx]; idx += 1

A = tok[idx:idx+N]; idx += N

ps = [0]*(N+1)
for i in range(N):
    ps[i+1] = ps[i] + A[i]

off = 0
out = []

for _ in range(Q):
    t = tok[idx]; idx += 1
    if t == 1:
        c = tok[idx]; idx += 1
        off = (off + c) % N
    else:
        l = tok[idx]; r = tok[idx+1]; idx += 2
        a = (l + off - 1) % N + 1
        b = (r + off - 1) % N + 1
        if a <= b:
            s = ps[b] - ps[a-1]
        else:
            s = (ps[N] - ps[a-1]) + ps[b]
        out.append(str(s))

if out:
    sys.stdout.write("\n".join(out) + "\n")

# Similar to ABC410/abc410_c.py