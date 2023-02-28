'''
nota_1 = input("Insira a primeira nota: ")
nota_2 = input("Insira a segunda nota: ")
nota_3 = input("Insira a terceira nota: ")
nota_4 = input("Insira a quarta nota: ")

media = (int(nota_1) + int(nota_2) + int(nota_3) + int(nota_4)) / 4

print(f"A média foi: {media}")
'''
import sys

nota_1 = float(sys.argv[1])
nota_2 = float(sys.argv[2])
nota_3 = float(sys.argv[3])
nota_4 = float(sys.argv[4])

media = (nota_1 + nota_2 + nota_3 + nota_4) / 4

print(f"A média foi: {media}")