# ABC375 C - Spiral Rotation
# See problem: https://atcoder.jp/contests/abc375/tasks/abc375_c
# 2025-08-07 AC+ (ADT　20250807　EASY)

import sys
input = sys.stdin.readline

def main():
    N = int(input())
    A = [list(input().rstrip('\n')) for _ in range(N)]
    B = [[''] * N for _ in range(N)]
    N1 = N - 1

    for i in range(N):
        for j in range(N):
            p = min(i, j, N1 - i, N1 - j) + 1
            k = p & 3

            if k == 0:
                i2, j2 = i, j
            elif k == 1:
                i2, j2 = j, N1 - i
            elif k == 2:
                i2, j2 = N1 - i, N1 - j
            else:  # k == 3
                i2, j2 = N1 - j, i

            B[i2][j2] = A[i][j]

    out = sys.stdout
    for row in B:
        out.write(''.join(row) + '\n')

if __name__ == "__main__":
    main()
