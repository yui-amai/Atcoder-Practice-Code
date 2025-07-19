#!/usr/bin/env python3
import sys
import math

def primes_upto(n):
    """
    埃式筛求出 <= n 的所有素数，返回一个列表。
    复杂度 O(n log log n)。
    """
    sieve = bytearray(b'\x01') * (n+1)
    sieve[0:2] = b'\x00\x00'    # 0,1 不是素数
    m = int(n**0.5)
    for i in range(2, m+1):
        if sieve[i]:
            # 把 i 的倍数从 i*i 开始标记为合数
            start = i*i
            step = i
            sieve[start:n+1:step] = b'\x00' * ((n - start)//step + 1)
    return [i for i, isprime in enumerate(sieve) if isprime]

def main():
    data = sys.stdin.readline().split()
    L, R = map(int, data)
    # 1) 先求出 sqrt(R) 以内的素数，用于分段筛和后面枚举高次幂
    limit = int(math.isqrt(R))
    small_primes = primes_upto(limit)

    # 2) 分段筛 [L, R]，先假设都是素数，再用小素数把合数划掉
    seg_len = R - L + 1
    is_prime = bytearray(b'\x01') * seg_len

    for p in small_primes:
        p2 = p * p
        if p2 > R:
            break
        # 找到区间内第一个 >= p^2 的 p 的倍数
        start = max(p2, ((L + p - 1)//p) * p)
        offset = start - L
        # 用切片一次性把这些位置标记为 0（合数）
        step = p
        count = (seg_len - offset + step - 1)//step
        is_prime[offset::step] = b'\x00' * count

    # 1 一定不是素数，把它也标记掉
    if L == 1:
        is_prime[0] = 0
    # 无论 L 是不是素数，都要排除掉区间左端点 L
    # 因为我们只统计 (L, R] 里的 prime^1
    is_prime[0] = 0

    # 3) 统计 (L, R] 内的素数个数
    cnt_primes = is_prime.count(1)

    # 4) 枚举所有素数高次幂 p^k (k>=2)，看它们落在哪些位置
    cnt_powers = 0
    for p in small_primes:
        x = p * p
        # 从 p^2 开始，一直乘到超过 R
        while x <= R:
            if x > L:
                cnt_powers += 1
            x *= p

    # 5) 答案 = 1 + 素数个数 + 高次幂个数
    #    +1 是算上 A_L 这一格
    ans = 1 + cnt_primes + cnt_powers

    # 末尾加换行，避免 shell 提示符挤到输出后面
    sys.stdout.write(str(ans) + "\n")

if __name__ == "__main__":
    main()
