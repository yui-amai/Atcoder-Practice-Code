S = input().strip()
T = input().strip()

for i in range(1, len(S)):
    if S[i].isupper():
        if S[i-1] not in T:
            print("No")
            exit()
print("Yes")