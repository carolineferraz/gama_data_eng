import pandas as pd

df = pd.read_parquet('dados.parquet')
print(df)
print(type(df))

# para mostrar apenas as 3 primeiras linhas do dataframe:
print(df.head(3))

# para mostrar um item específico no dataframe:
print(df.loc(0)[0]["nome"]) # item no índice 0 da coluna "nome"
print(df.loc(0)[3]["obs"]) # item no índice 3 da coluna "obs"

# para mostrar apenas uma coluna do dataframe:
print(df["obs"]) 

# para mostrar duas ou mais colunas do dataframe:
print(df[["id", "nome"]]) 

# para mostrar apenas as linhas do dataframe que tem um item específico:
print(df.loc[df["obs"] == "Aluna"]) 

# para mostrar apenas as linhas do dataframe que tem um item específico e exibindo apenas as colunas id e nome:
print(df.loc[df["obs"] == "Aluna", ["id", "nome"]]) 