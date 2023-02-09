import pandas as pd

# Lendo os arquivos CSV
clientes_df = pd.read_csv("clientes.csv")
pedidos_df = pd.read_csv("pedidos.csv")

print("-" * 110)
print(clientes_df)
print("-" * 110)
print(pedidos_df)
print("-" * 110)

# Fazendo o merge dos dois DataFrames usando o método merge e especificando o campo cliente_id como chave
resultado = pedidos_df.merge(clientes_df, how='inner', left_on="cliente_id", right_on="id")
print(resultado)
print("-" * 110)

# Agrupando os dados pelo campo cliente_id e usando o método size para calcular a contagem de linhas
total_pedidos = resultado.groupby(['nome'])['nome', "valor_total"].mean()
print(total_pedidos)
print("-" * 110)