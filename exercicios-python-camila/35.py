# Lists

numeros = range(1, 10, 2)
list_numeros = list(numeros)
print(list_numeros)

list_numeros_copy = list_numeros.copy()

list_numeros_copy.extend(list(range(100, 111)))
print(list_numeros_copy)

listas_concatenadas = list_numeros + list_numeros_copy
print(listas_concatenadas)

print(listas_concatenadas[10:-1:2])