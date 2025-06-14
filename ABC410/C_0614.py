import sys

lines = sys.stdin.read().strip().split()
tok = list(map(int, lines))

N = tok[0]
Q = tok[1]
idx = 2
A = list(range(1, N + 1))
offset = 0

for _ in range(Q):
    type_ = tok[idx]
    idx += 1
    
    if type_ == 1:
        p = tok[idx]
        x = tok[idx + 1]
        idx += 2
        pos = (offset + p - 1) % N
        A[pos] = x
    
    elif type_ == 2:
        p = tok[idx]
        idx += 1
        pos = (offset + p - 1) % N
        print(A[pos])
    
    elif type_ == 3:
        k = tok[idx]
        idx += 1
        offset = (offset + k) % N
