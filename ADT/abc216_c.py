# ABC216 C - Many Balls
# See problem: https://atcoder.jp/contests/abc216/tasks/abc216_c
# 2025-09-09 AC+ (ADT　20250909　EASY)

import sys

n = int(sys.stdin.read().strip())
ops = []
while n > 0:
    if n & 1:
        ops.append('A')
        n -= 1
    else:
        ops.append('B')
        n //= 2

print(''.join(reversed(ops)))