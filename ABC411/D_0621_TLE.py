# RE

import sys

lines = sys.stdin.read().splitlines()
N, Q = map(int, lines[0].split())

server = []
pc = [[] for _ in range(N)]

for i in range(Q):
    query = lines[i + 1].split()
    type_ = int(query[0])
    p = int(query[1]) - 1
    if type_ == 1:
        pc[p] = server.copy()
    elif type_ == 2:
        s = query[2]
        pc[p].append(s)
    elif type_ == 3:
        server = pc[p].copy()

print(''.join(server))