# Faça um programa que leia 3 números via linha de comando e mostre-os e ordem decrescente
import sys

numeros = []

for x in range(1, 4):
    x = sys.argv[x]
    x = int(x)
    numeros.append(x)

numeros.sort(reverse=True)

for item in numeros:
    print(item)
