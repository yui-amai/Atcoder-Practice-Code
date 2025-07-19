import sys

def main():
    data = sys.stdin.read().split()
    N, L = map(int, data[:2])
    d = list(map(int, data[2:]))

    freq = [0] * L
    cur = 0
    freq[0] += 1

    for dist in d:
        cur = (cur + dist) % L
        freq[cur] += 1

    if L % 3 != 0:
        print(0)
        return

    t = L // 3
    ans = 0
    for r in range(t):
        ans += freq[r] * freq[r + t] * freq[r + 2*t]

    print(ans)

if __name__ == "__main__":
    main()
