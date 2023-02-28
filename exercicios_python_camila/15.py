nota_1 = input("Insira a primeira nota: ")
nota_2 = input("Insira a segunda nota: ")

nota_1 = int(nota_1)
nota_2 = int(nota_2)

media = (nota_1 + nota_2) / 2

if(media == 10):
    print("Aprovado com distinção")
elif(media >= 7):
    print("Aprovado")
else:
    print("Reprovado")