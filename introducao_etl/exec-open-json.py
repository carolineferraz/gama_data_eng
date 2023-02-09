import pandas as pd

df = pd.read_json('dados.json')
print(df)
print(type(df))

# para mostrar apenas uma coluna do dataframe:
print(df["obs"]) 

# para mostrar duas ou mais colunas do dataframe:
print(df[["id", "nome"]]) 

