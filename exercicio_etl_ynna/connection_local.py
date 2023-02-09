import pyodbc

conn = pyodbc.connect(
    "Driver={SQL Server};"
    "Server=DESKTOP-62M87GL\SQLEXPRESS;"
    "Database=exercicio_ynna;"
)

cursor = conn.cursor()