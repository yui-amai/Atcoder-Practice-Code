# ABC414 C - Palindromic in Both Bases
# See problem: https://atcoder.jp/contests/abc414/tasks/abc414_c
# 2025-07-12 AC+

A = int(input())
N = int(input())
maxL = len(str(N))
total = 0

for L in range(1, maxL + 1):
    h = (L + 1) // 2
    h_min = 10 ** (h - 1)
    h_max = 10 ** h
    for x in range(h_min, h_max):
        x_str = str(x)
        if L % 2 == 0:
            tail_chars = x_str[::-1]
        else:
            tail_chars = x_str[:-1][::-1]
        p_str = x_str + tail_chars
        p = int(p_str)
        if p > N:
            break
        digs = []
        t = p
        while t > 0:
            digs.append(t % A)
            t //= A
        if not digs or digs == digs[::-1]:
            total += p

print(total)

# For A = 2, N = 999999999999 (the worst case)
# 881 ms, 82588 KiB (Pypy 3.10)
