import pandas as pd

# lendo os arquivos csv:
df_pais = pd.read_csv('pais.csv')
df_estado = pd.read_csv('estado.csv')

print(type(df_pais))

# printando os arquivos na tela:
print("\nDataFrame País: ")
print(df_pais)

print("\nDataFrame Estado: ")
print(df_estado)

# juntando as duas tabelas:
df_pais_estado = df_pais.merge(df_estado, how='inner', left_on="id", right_on="pais_id")
print("\nMerge (join) dos DataFrames País e Estado: ")
print(df_pais_estado)

# somando as populações dos estados e agrupando os resultados por país:
populacao_total_pais = df_pais_estado.groupby(['pais'])['populacao'].sum()
print("\nTabela populacao_total_pais: ")
print(populacao_total_pais)
print(type(populacao_total_pais))

# convertendo o tipo de dado de dado gerado de 'Series' para 'DataFrame' e definindo o nome das colunas:
df_populacao_total_pais = populacao_total_pais.reset_index()
df_populacao_total_pais.columns = ['pais', 'populacao']

print(df_populacao_total_pais)
print(type(df_populacao_total_pais))