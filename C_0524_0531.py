def security2():
    import sys
    S = sys.stdin.read().strip()
    a = len(S)

    if a == 0:
        print(0)
        return

    if a == 1:
        times = 1 + int(S[0])
    else:
        count = sum(1 for i in range(a - 1) if S[i] < S[i + 1])
        times = a + int(S[0]) + 10 * count

    print(times)

security2()