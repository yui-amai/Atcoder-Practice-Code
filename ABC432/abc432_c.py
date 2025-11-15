# ABC432 C - Candy Tribulation
# See problem: https://atcoder.jp/contests/abc432/tasks/abc432_c
# 2025-11-15 WA->AC

import sys

data = list(map(int, sys.stdin.read().split()))

N = data[0]
X = data[1]
Y = data[2]
A = data[3:]

diff = Y - X

x_mod = X % diff
res = [(x_mod * (a % diff)) % diff for a in A]
res1 = res[0]

if any(r != res1 for r in res):
    print(-1)
    sys.exit(0)

XA = [X * a for a in A]
YA = [Y * a for a in A]
L = max(XA)
R = min(YA)

if L > R:
    print(-1)
    sys.exit(0)

W = R - ((R - res1) % diff)
if W < L:
    print(-1)
    sys.exit(0)

total_Y = (N * W - X * sum(A)) // diff
print(total_Y)

