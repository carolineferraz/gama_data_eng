import sys

a = sys.argv[1]
b = sys.argv[2]

a = int(a)
b = int(b)

if a > b:
    for x in range(b, a+1):
        print(x)

if a < b:
    for x in range(a, b+1):
        print(x)