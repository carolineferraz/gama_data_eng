'''
def imprime_endereco(**endereco):
    print(endereco['rua'])
    print(endereco['bairro'])
    print(endereco['numero'])

imprime_endereco(rua = "Francisco de Barros", bairro = "Boa Viagem", numero = 177)


def cria_dicionario(**endereco):
    endereco = {'rua': endereco['rua'], 'bairro': endereco['bairro'], 'numero': endereco['numero']}
    return endereco

print(cria_dicionario(rua = "Francisco de Barros", bairro = "Boa Viagem", numero = 177))
'''
def imprime_endereco(*nome, **endereco):
    print(endereco['rua'])
    print(endereco['bairro'])
    print(endereco['numero'])
    print(nome)

imprime_endereco("Camis", "Simba", "Donita", rua = "Francisco de Barros", bairro = "Boa Viagem", numero = 177)
