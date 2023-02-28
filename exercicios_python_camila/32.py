def calcula_media(*valores):
    soma = 0
    qtd = 0
    for i in valores:
        soma += i
        qtd += 1
    media = soma / qtd
    return soma, media

print(calcula_media(5, 5, 6, 7))
print(calcula_media(5, 5, 6, 7, 10, 12))
    