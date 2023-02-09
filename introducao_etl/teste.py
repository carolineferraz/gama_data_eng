'''with open("dados.csv", "r") as arquivo:
    cabecalho = arquivo.readline().split(";")
    for linha in arquivo:
        valores = linha.strip().split(";")
        registro = {cabecalho[i]: valores[i] for i in range(len(cabecalho))}
        print("=================[Relatório]===================")
        print("Id: " + registro["id"])
        print("Nome: " + registro["nome"])
        print("Obs: " + registro["obs"])'''

with open("dados.csv", "r") as arquivo:
    cabecalho = arquivo.readline().strip().split(";")
    print("{:<20} {:<20} {:<20}".format(*cabecalho))
    print("-" * 60)
    for linha in arquivo:
        valores = linha.strip().split(";")
        print("{:<20} {:<20} {:<20}".format(*valores))
