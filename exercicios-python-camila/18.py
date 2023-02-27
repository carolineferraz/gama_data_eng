'''
x = 0
soma = 0

while(x < 5):
    a = input("Insira um número: ")
    a = int(a)
    if(a > soma):
        soma = a
    x += 1

print(f"O maior número foi: {soma}")
'''

x = 0
m = 0

while(x < 5):
    a = input("Insira um número: ")
    a = int(a)
    if(a > m):
        m = a
    x += 1

print(f"O maior número foi: {m}")