# ABC417 C - Distance Indicators
# See problem: https://atcoder.jp/contests/abc417/tasks/abc417_c
# 2025-08-02 AC+

from collections import defaultdict

def count_valid_pairs(A):
    count = 0
    counter = defaultdict(int)

    for j, Aj in enumerate(A):
        key = j - Aj
        count += counter.get(key, 0)
        counter[j + Aj] += 1

    return count

N = int(input())
A = list(map(int, input().split()))

result = count_valid_pairs(A)
print(result)
