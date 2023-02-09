import connection_remote as cr
from extract_transform import df_populacao_total_pais

try:
    cr.conn.execute(
    '''IF OBJECT_ID('populacao_paises', 'U') IS NULL
    BEGIN
    CREATE TABLE populacao_paises(
	pais VARCHAR(255),
	populacao VARCHAR(255)
    );
    END;''')
    
    for index, row in df_populacao_total_pais.iterrows():
        cr.conn.execute("INSERT INTO populacao_paises (pais, populacao) VALUES (?, ?)", row[0], row[1])

except:
    print("Erro ao persistir os dados...")

else:
    cr.conn.commit()
    cr.conn.close()
    print("Load efetuado com sucesso!")