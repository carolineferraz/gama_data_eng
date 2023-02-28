'''
nomes = ["carol", "duda", "camila"]

for x in nomes:
    if x == "duda":
        continue
    print(x)
'''

'''
subs = ["casa", "rosangela", "cenoura"]
adjs = ["nova", "quebrada", "podre"]

for x in subs:
    for y in adjs:
        print(x, y)
'''
'''
try:
    print(nome)
except NameError:
    print("Esta variável não existe")
else:
    print("Nenhum erro encontrado...")
finally:
    print("Fim dos blocos try/except")
x

usuarios_banidos = ['Maria', 'André', 'Gustavo']
usuario = 'Paulo'

if usuario not in usuarios_banidos:
    print(usuario.title() + ", você pode postar um comentário")
else:
    print(usuario.title() + ", infelizmente você está banido")

'''

def soma(valor1, valor2): return valor1 + valor2

print(soma(2,2))