# ABC423 C - Lock All Doors
# See problem: https://atcoder.jp/contests/abc423/tasks/abc423_c
# 2025-09-14 WA->AC+

import sys

data = list(map(int, sys.stdin.read().strip().split()))
if not data:
    sys.exit(0)

N, R = data[0], data[1]
L = data[2:2 + N]

if all(x == 1 for x in L):
    print(0)
    sys.exit(0)

Lmin = next(i + 1 for i, x in enumerate(L) if x == 0)
Lmax = N - next(i for i, x in enumerate(reversed(L)) if x == 0)

open_cnt = sum(1 for x in L if x == 0)

left_end  = min(R, Lmin)
right_end = max(R, Lmax)

pref = [0] * (N + 1)
for i in range(1, N + 1):
    pref[i] = pref[i - 1] + (1 if L[i - 1] == 1 else 0)

closed_need_cross = pref[right_end] - pref[left_end]

ans = open_cnt + 2 * closed_need_cross
print(ans)