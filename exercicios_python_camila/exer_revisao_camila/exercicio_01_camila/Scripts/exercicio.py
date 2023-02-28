saldo = { 'saldo': 0 }
op = 0
op_2 = 0

def adicionar(valor):
    if (valor > 0):
        saldo['saldo'] += valor
        print("\nOperação realizada com sucesso.")
        print(f"\nSeu saldo é: R${saldo['saldo']}")
    else:
        print("\nOperação inválida.")
        print("A operação não foi realizada.")
        print(f"\nSeu saldo é: R${saldo['saldo']}")

def retirar(valor):
    if (valor <= saldo['saldo']) and (valor > 0):
        saldo['saldo'] -= valor
        print("\nOperação realizada com sucesso.")
        print(f"\nSeu saldo é: R${saldo['saldo']}")
    else:
        print("\nSaldo insuficiente ou operação inválida.")
        print("A operação não foi realizada.")
        print(f"\nSeu saldo é: R${saldo['saldo']}")

def ver_saldo():
    print(f"\nSeu saldo é: R${saldo['saldo']}")

def chamar_outra_operacao(op_2):
    match op_2:
        case 1:
            print("\n1 - Adicionar")
            print("2 - Retirar")
            print("3 - Ver saldo")
            print("4 - Encerrar")
            op = input("\nEscolha uma das opções: ")
            op = int(op)
            chamar_caixinha(op)
        case 2: 
            print("\nSistema encerrado. Até a próxima!")
        case _:
            print("\nOpção inválida.")
            print("\nDeseja fazer mais alguma operação?")
            op_2 = input("1 - Sim\n2 - Não\n")
            op_2 = int(op_2)
            chamar_outra_operacao(op_2)

def chamar_caixinha(op):
    match op:
        case 1:
            valor = input("\nDigite um valor para adicionar: ")
            if valor.isnumeric():
                valor = float(valor)
                adicionar(valor)
            else:
                print("\nValor inválido. Operação não realizada.")
                print("\nDeseja fazer mais alguma operação?")
                op_2 = input("1 - Sim\n2 - Não\n")
                op_2 = int(op_2)
                chamar_outra_operacao(op_2)
        case 2:
            valor = input("\nDigite um valor para retirar: ")
            if valor.isnumeric():
                valor = float(valor)
                retirar(valor)
            else:
                print("\nValor inválido. Operação não realizada.")
                print("\nDeseja fazer mais alguma operação?")
                op_2 = input("1 - Sim\n2 - Não\n")
                op_2 = int(op_2)
                chamar_outra_operacao(op_2)
        case 3:
            ver_saldo()
        case 4:
            print("\nSistema encerrado. Até a próxima!")
        case _:
            print("\nOpção inválida.")
            print("\n1 - Adicionar")
            print("2 - Retirar")
            print("3 - Ver saldo")
            print("4 - Encerrar")
            op = input("\nEscolha uma das opções: ")
            op = int(op)
            chamar_caixinha(op)

    print("\nDeseja fazer mais alguma operação?")
    op_2 = input("1 - Sim\n2 - Não\n")
    op_2 = int(op_2)
    chamar_outra_operacao(op_2)


print("\nSeja bem-vinde!")
print("\n1 - Adicionar")
print("2 - Retirar")
print("3 - Ver saldo")
print("4 - Encerrar")

op = input("\nEscolha uma das opções: ")
op = int(op)

chamar_caixinha(op)
