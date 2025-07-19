import sys
sys.setrecursionlimit(10**7)

def main():
    input = sys.stdin.readline
    N, M = map(int, input().split())
    G = [[] for _ in range(N+1)]

    for _ in range(M):
        a, b, w = map(int, input().split())
        G[a].append((b, w))

    dist = [0] * (N + 1)
    vis  = [False] * (N + 1)
    basis = [] 

    def insert_basis(x):
        for b in basis:
            x = min(x, x ^ b)
        if x:
            basis.append(x)
            basis.sort(reverse=True) 
    def dfs(u):
        vis[u] = True
        for v, w in G[u]:
            if not vis[v]:
                dist[v] = dist[u] ^ w
                dfs(v)
            else:
                cycle = dist[u] ^ w ^ dist[v]
                if cycle:
                    insert_basis(cycle)

    dfs(1)

    if not vis[N]:
        print(-1)
        return

    res = dist[N]
    for b in basis:
        res = min(res, res ^ b)

    print(res)

if __name__ == "__main__":
    main()