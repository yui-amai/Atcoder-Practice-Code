# ABC426 C - Upgrade Required
# See problem: https://atcoder.jp/contests/abc426/tasks/abc426_c
# 2025-10-04 TLE->AC+

import sys
from array import array

data = list(map(int, sys.stdin.buffer.read().split()))
it = iter(data)
N = next(it)
Q = next(it)

a = array('i', [1]) * (N + 1)
a[0] = 0

parent = array('i', range(N + 1))

def find(x: int) -> int:
    while x != parent[x]:
        parent[x] = parent[parent[x]]
        x = parent[x]
    return x

out_lines = []
for _ in range(Q):
    x = next(it); y = next(it)
    s = 0
    while True:
        p = find(x)
        if p == 0:
            break
        s += a[p]
        a[p] = 0
        parent[p] = find(p - 1)
    a[y] += s
    out_lines.append(str(s))

sys.stdout.write("\n".join(out_lines) + "\n")
