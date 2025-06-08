N = int(input())
T = input()
A = input()

found = False
for i in range(N):
    if T[i] == 'o' and A[i] == 'o':
        found = True
        break

if found:
    print("Yes")
else:
    print("No")
