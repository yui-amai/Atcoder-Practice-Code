# ABC420 C - Sum of Min Query
# See problem: https://atcoder.jp/contests/abc420/tasks/abc420_c
# 2025-08-24 AC+

import sys

data = sys.stdin.buffer.read().split()
it = iter(data)

N = int(next(it))
Q = int(next(it))

A = [int(next(it)) for _ in range(N)]
B = [int(next(it)) for _ in range(N)]

ans = sum(a if a < b else b for a, b in zip(A, B))

out = []
for _ in range(Q):
    c = next(it)
    x = int(next(it)) - 1
    v = int(next(it))

    old = A[x] if A[x] < B[x] else B[x]
    if c == b"A":
        A[x] = v
    else:
        B[x] = v
    new = A[x] if A[x] < B[x] else B[x]

    ans += new - old
    out.append(str(ans))

print("\n".join(out)) 