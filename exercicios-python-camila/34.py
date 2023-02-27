# Arrays
# new_array = array.array('type', [list])

import array

# Array de inteiros:
int_lista = [1, 5, 54, -2, -44, 73, 37]
int_array = array.array('i', int_lista)
print(type(int_lista))
print(type(int_array))
print(int_array[2])
print(type(int_array[2]))

# Array de decimais:
float_lista = [3.5, -5.7, 6.6, 12.0, 9.5]
float_array = array.array('f', float_lista)
print(type(float_lista))
print(type(float_array))
print(float_array[-1])
print(type(float_array[-1]))

# métodos com arrays:
print(float_array.index(12.0))
float_array.pop()
print(float_array)