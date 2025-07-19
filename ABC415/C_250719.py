# ABC415 C - Mixture
# See problem: https://atcoder.jp/contests/abc415/tasks/abc415_c

import sys
from collections import deque

def solve():
    data = sys.stdin.read().split()
    it = iter(data)
    T = int(next(it))
    out = []

    for _ in range(T):
        N = int(next(it))
        S = next(it).strip()
        full = (1 << N) - 1

        reachable = [False] * (full + 1)
        reachable[0] = True

        dq = deque([0])

        while dq and not reachable[full]:
            mask = dq.popleft()
            for k in range(N):
                if not (mask >> k) & 1:
                    nxt = mask | (1 << k)
                    if not reachable[nxt] and S[nxt-1] == '0':
                        reachable[nxt] = True
                        dq.append(nxt)

        out.append("Yes" if reachable[full] else "No")

    sys.stdout.write("\n".join(out))

if __name__ == "__main__":
    solve()
