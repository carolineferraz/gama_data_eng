def informa_aprovacao(n1, n2, n3, n4):
    media = (n1 + n2 + n3 + n4) / 4
    if media < 5:
        return "Reprovada"
    elif media > 5 and media < 7:
        return "Está na média"
    return "Aprovada"

print(informa_aprovacao(5, 5, 6, 6))