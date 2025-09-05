# ABC418 C- Flush
# See problem: https://atcoder.jp/contests/abc418/tasks/abc418_c
# 2025-08-09 AC+

import sys
from array import array

data = list(map(int, sys.stdin.buffer.read().split()))
it = iter(data)

N = next(it)
Q = next(it)
A = [next(it) for _ in range(N)]
B = [next(it) for _ in range(Q)]

maxA = max(A)
maxBk = max(b - 1 for b in B)
M = max(maxA, maxBk, 0)

freq = array('q', [0]) * (M + 1)
for v in A:
    if v <= M:
        freq[v] += 1
    else:
        pass

prefCnt = array('q', [0]) * (M + 1)
prefSum = array('q', [0]) * (M + 1)
cnt = 0
s = 0
for i in range(M + 1):
    cnt += freq[i]
    s += freq[i] * i
    prefCnt[i] = cnt
    prefSum[i] = s

out_lines = []
Nq = N
for b in B:
    if b > maxA:
        out_lines.append("-1")
        continue
    k = b - 1
    Sk = prefSum[k] + (Nq - prefCnt[k]) * k
    out_lines.append(str(Sk + 1))

sys.stdout.write("\n".join(out_lines))