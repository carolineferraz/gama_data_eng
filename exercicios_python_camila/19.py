x = 0
soma = 0

while(x < 5):
    a = input("Insira um número: ")
    a = int(a)
    soma += a
    x += 1

media = soma / 5

print(f"A soma foi: {soma}")
print(f"A média foi: {media}")
