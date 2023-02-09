import pandas as pd

df = pd.read_csv('dados.csv')
df.to_json('dados.json')