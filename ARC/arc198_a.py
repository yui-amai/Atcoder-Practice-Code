# ARC198 A - I hate 1 (300pts)
# See problem: https://atcoder.jp/contests/arc198/tasks/arc198_a
# 2025-07-23 AC

N = int(input())

if N == 1:
    print(1)
    print(1)
else:
    k = N // 2
    print(k)
    s = list(range(2, N + 1, 2))
    print(*s)