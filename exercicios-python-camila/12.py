num_1 = input("Primeiro número: ")
num_2 = input("Segundo número: ")
num_3 = input("Terceiro número: ")

num_1 = int(num_1)
num_2 = int(num_2)
num_3 = int(num_3)

if(num_1 > num_2 and num_1 > num_3):
    print(f"Maior número é: {num_1}")
elif(num_2 > num_1 and num_2 > num_3):
    print(f"Maior número é: {num_2}")
elif(num_3 > num_1 and num_3 > num_2):
    print(f"Maior número é: {num_3}")
else:
    print("Números iguais")