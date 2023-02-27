# Faça um programa que faça 5 perguntas para uma pessoa sobre um crime:
# "Falou com a vítima no dia do crime?"
# "Esteve no local do crime?"
# "Mora perto da vítima?"
# "Devia dinheiro para a vítima?"
# "Já trabalhou com a vítima?"
# Se a pessoa responder positivamente para 2 questões, ela deverá ser classificada como "Suspeita". Entre 3 e 4, como "Cúmplice". E 5 como "Assassina". Caso contrário, ela será classificada como "Inocente".

pergunta_1 = ""
pergunta_2 = ""
pergunta_3 = ""
pergunta_4 = ""
pergunta_5 = ""
resposta = 0

while(pergunta_1 != "S" and pergunta_1 != "N"):
    pergunta_1 = input("Falou com a vítima no dia do crime? S/N\n")
    if(pergunta_1 == "S"):
        resposta += 1

while(pergunta_2 != "S" and pergunta_2 != "N"):
    pergunta_2 = input("Esteve no local do crime?\n")
    if(pergunta_2 == "S"):
        resposta += 1

while(pergunta_3 != "S" and pergunta_3 != "N"):
    pergunta_3 = input("Mora perto da vítima?\n")
    if(pergunta_3 == "S"):
        resposta += 1

while(pergunta_4 != "S" and pergunta_4 != "N"):
    pergunta_4 = input("Devia dinheiro para a vítima?\n")
    if(pergunta_4 == "S"):
        resposta += 1

while(pergunta_5 != "S" and pergunta_5 != "N"):
    pergunta_5 = input("Já trabalhou com a vítima?\n")
    if(pergunta_5 == "S"):
        resposta += 1

if(resposta == 5):
    print("Classificação: 'Assassina'")
elif(resposta == 3 or resposta == 4):
    print("Classificação: 'Cúmplice'")
elif(resposta == 2):
    print("Classificação: 'Suspeita'")
else:
    print("Classificação: 'Inocente'")