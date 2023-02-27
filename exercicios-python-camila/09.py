import sys

valor_1 = sys.argv[1]
valor_2 = sys.argv[2]

valor_1 = int(valor_1)
valor_2 = int(valor_2)

if (valor_1 > valor_2):
    print(valor_1)
elif (valor_2 > valor_1):
    print(valor_2)
else:
    print("Os valores são iguais")