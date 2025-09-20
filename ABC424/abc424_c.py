# ABC424 C - New Skill Acquired
# See problem: https://atcoder.jp/contests/abc424/tasks/abc424_c
# 2025-09-20 TLE->AC+

import sys
from collections import deque

data = list(map(int, sys.stdin.read().strip().split()))
it = iter(data)
N = next(it)

A = [0] * (N + 1)
B = [0] * (N + 1)
for i in range(1, N + 1):
    A[i] = next(it)
    B[i] = next(it)

learned = [False] * (N + 1)
q = deque()

for i in range(1, N + 1):
    if A[i] == 0 and B[i] == 0:
        learned[i] = True
        q.append(i)

pre = [[] for _ in range(N + 1)]
for i in range(1, N + 1):
    if A[i] > 0:
        pre[A[i]].append(i)
    if B[i] > 0:
        pre[B[i]].append(i)

while q:
    cur = q.popleft()
    for nxt in pre[cur]:
        if (not learned[nxt]) and (learned[A[nxt]] or learned[B[nxt]]):
            learned[nxt] = True
            q.append(nxt)

print(sum(learned[1:]))
