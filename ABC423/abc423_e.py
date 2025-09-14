# ABC423 E - Sum of Subarrays
# See problem: https://atcoder.jp/contests/abc423/tasks/abc423_e
# 2025-09-14 AC+

import sys

it = list(map(int, sys.stdin.buffer.read().split()))
if not it:
    sys.exit(0)

N, Q = it[0], it[1]
A = [0] + it[2:2 + N]
ptr = 2 + N

S0 = [0] * (N + 1)
S1 = [0] * (N + 1)
S2 = [0] * (N + 1)
for j in range(1, N + 1):
    a = A[j]
    S0[j] = S0[j - 1] + a
    S1[j] = S1[j - 1] + a * j
    S2[j] = S2[j - 1] + a * j * j

def rng(S, L, R):
    return S[R] - S[L - 1]

out = []
for _ in range(Q):
    L = it[ptr]; R = it[ptr + 1]; ptr += 2
    sumA   = rng(S0, L, R)
    sumAj  = rng(S1, L, R)
    sumAj2 = rng(S2, L, R)
    ans = -sumAj2 + (L + R) * sumAj - (L - 1) * (R + 1) * sumA
    out.append(str(ans))

sys.stdout.write("\n".join(out) + "\n")