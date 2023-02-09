# caso o pandas não esteja instalado, rodar os comandos abaixo no servidor linux
# sudo apt install python3-pip
# pip install pandas

import pandas as pd

# Extract
# Lendo o arquivo CSV usando o método read_csv
df = pd.read_csv("dados.csv")

# Imprimindo o cabeçalho - Transform
print("{:<20} {:<20} {:<20}".format(*df.columns[0].split(";")))
print("-" * 60)

# Loop através de cada linha no DataFrame - Transform
for index, row in df.iterrows():
    # Imprimindo os valores
    linha = row[0].split(";")
    print("{:<20} {:<20} {:<20}".format(linha[0], linha[1], linha[2]))