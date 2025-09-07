# ABC422 D - Least Unbalanced
# See problem: https://atcoder.jp/contests/abc422/tasks/abc422_d
# 2025-09-07 WA->TLE->AC-

import sys

def main():
    data = sys.stdin.read().strip().split()
    N = int(data[0]); K = int(data[1])

    ans = [K]
    for _ in range(N):
        nxt = []
        for a in ans:
            h = a // 2
            nxt.extend((h, a - h))
        ans = nxt

    U = max(ans) - min(ans)

    out = [str(U), "\n", " ".join(map(str, ans)), "\n"]
    sys.stdout.write("".join(out))

if __name__ == "__main__":
    main()
