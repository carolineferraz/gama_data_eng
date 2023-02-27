# Faça um programa que faça 5 perguntas para uma pessoa sobre um crime:
# "Falou com a vítima no dia do crime?"
# "Esteve no local do crime?"
# "Mora perto da vítima?"
# "Devia dinheiro para a vítima?"
# "Já trabalhou com a vítima?"
# Se a pessoa responder positivamente para 2 questões, ela deverá ser classificada como "Suspeita". Entre 3 e 4, como "Cúmplice". E 5 como "Assassina". Caso contrário, ela será classificada como "Inocente".

perguntas = [
    "Falou com a vítima no dia do crime? S/N\n",
    "Esteve no local do crime?\n",
    "Mora perto da vítima?\n",
    "Devia dinheiro para a vítima?\n",
    "Já trabalhou com a vítima?\n"
]

resposta = 0

for p in perguntas:
    r = input(p)
    if r == "S" or r == "s":
        resposta += 1
    elif r == "N" or r == "n":
        continue
    else:
        r = input(p)
        while(r != "S" or r != "s" or r != "N" or r!= "n"):
            r = input(p)
            if r == "S" or r == "s":
                resposta += 1
                break
            elif r == "N" or r == "n":
                break

if resposta == 5:
    print("Classificação: 'Assassina'")
elif resposta == 3 or resposta == 4:
    print("Classificação: 'Cúmplice'")
elif resposta == 2:
    print("Classificação: 'Suspeita'")
else:
    print("Classificação: 'Inocente'")