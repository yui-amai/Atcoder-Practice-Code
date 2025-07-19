#!/usr/bin/env python3
import sys
import bisect

def main():
    data = sys.stdin.read().split()
    it = iter(data)
    # 1) 读入 N（初始瓶装可喝的可乐数）和 M（兑换选项数）
    N = int(next(it))
    M = int(next(it))

    # 2) 收集所有一开始就可能兑换的选项 (A_i <= N)，并计算净消耗 c_i = A_i - B_i
    #    我们只需要存 (A_i, c_i) 这一对
    options = []
    for _ in range(M):
        A = int(next(it))
        B = int(next(it))
        if A <= N:
            options.append((A, A - B))  # cost = A_i - B_i, 一定是正数

    # 如果没有任何一条可兑换选项，直接输出 0
    if not options:
        print(0)
        return

    # 3) 按 A 升序
    options.sort(key=lambda x: x[0])
    A_list = [a for a, _ in options]
    c_list = [c for _, c in options]

    # 4) 前缀最小：对于前 i 条选项（A_list[0..i]），找出其中最小的 cost 及其对应的阈值 A
    pref_c = [0] * len(c_list)   # pref_c[i] = min(c_list[0..i])
    pref_A = [0] * len(c_list)   # pref_A[i] = A_list[j_min], j_min 是让 pref_c[i] 达到的下标
    pref_c[0] = c_list[0]
    pref_A[0] = A_list[0]
    for i in range(1, len(c_list)):
        if c_list[i] < pref_c[i-1]:
            pref_c[i] = c_list[i]
            pref_A[i] = A_list[i]
        else:
            pref_c[i] = pref_c[i-1]
            pref_A[i] = pref_A[i-1]

    # 5) 主循环：用 e 表示手头的空瓶数，stickers 表示已兑换的贴纸数
    e = N
    stickers = 0
    while True:
        # 找到最大的 idx 使得 A_list[idx] <= e
        idx = bisect.bisect_right(A_list, e) - 1
        if idx < 0:
            break   # 空瓶数再也达不到最小的 A_i，结束

        # 在前 idx 条里，选净消耗最小的那一条
        cost = pref_c[idx]
        threshold = pref_A[idx]

        # 还能连续兑换多少次？要保证每次兑换前空瓶 >= threshold
        # 兑换 t 次后空瓶变成 e - t*cost，需 e - t*cost < threshold 才跳出
        # 解不等式 e - t*cost < threshold => t > (e - threshold)/cost
        # 因此最多 t = floor((e - threshold)/cost) + 1 次
        t = (e - threshold) // cost + 1

        stickers += t
        e -= t * cost

    # 6) 输出结果
    print(stickers)

if __name__ == "__main__":
    main()
