import sys
from collections import deque

def solve():
    data = list(map(int, sys.stdin.buffer.read().split()))
    it = iter(data)
    T = next(it)
    out = []

    for _ in range(T):
        n = next(it)
        S = [next(it) for _ in range(n)]
        P = sorted((s, i) for i, s in enumerate(S))

        visited = [False] * n
        dist    = [0] * n

        dq = deque()
        dq.append(0)
        visited[0] = True
        dist[0]    = 1

        ptr = 0
        while ptr < n and P[ptr][1] == 0:
            ptr += 1

        while dq:
            u = dq.popleft()
            if u == n - 1:
                break
            limit = S[u] * 2
            while ptr < n and P[ptr][0] <= limit:
                v = P[ptr][1]
                ptr += 1
                if not visited[v]:
                    visited[v] = True
                    dist[v]    = dist[u] + 1
                    dq.append(v)

        out.append(str(dist[n-1] if visited[n-1] else -1))

    sys.stdout.write("\n".join(out)+ "\n")

if __name__ == "__main__":
    solve()

