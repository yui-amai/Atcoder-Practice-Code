# ABC433 C - 1122 Substring 2
# See problem: https://atcoder.jp/contests/abc433/tasks/abc433_c
# 2025-11-22 WA->AC+

import sys

def main():
    s = sys.stdin.buffer.read().decode().strip()
    if not s:
        print(0)
        return

    ans = 0

    prev_digit = None
    prev_len = 0

    curr_digit = s[0]
    curr_len = 1

    for ch in s[1:]:
        if ch == curr_digit:
            curr_len += 1
        else:
            if prev_digit is not None:
                if (ord(curr_digit) - ord('0')) == (ord(prev_digit) - ord('0')) + 1:
                    ans += min(prev_len, curr_len)

            prev_digit = curr_digit
            prev_len = curr_len
            curr_digit = ch
            curr_len = 1

    if prev_digit is not None:
        if (ord(curr_digit) - ord('0')) == (ord(prev_digit) - ord('0')) + 1:
            ans += min(prev_len, curr_len)

    print(ans)

if __name__ == "__main__":
    main()
