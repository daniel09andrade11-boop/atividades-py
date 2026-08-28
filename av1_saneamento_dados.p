 # PROVA PRÁTICA AV1 - 3º BIMESTRE
# ARQUIVO: av1_saneamento_dados.py
# Nome do Aluno: daniel oliveira andrade
# Data:28/08/26

# Lista de cadastros brutos recebidos do sistema
cadastros_brutos = [
   "  joao da silva;11988887777  ",
   "  maria sousa;21977776666  ",
   "  carlos edgardo oliveira;31966665555  ",
   "  ana paula lima;41955554444  "
]

print("=============================================")
print("======================================================")
print("     SISTEMA DE SANEAMENTO DE DADOS - AV1         ")

# TODO: Escreva o laco de repeticao usando for e range() para percorrer a lista
for i in range(len(cadastros_brutos)):
   cadastro = cadastros_brutos[i].strip()  # Remove espaços em branco no início e no final
   nome, telefone = cadastro.split(";")  # Divide o cadastro em nome e telefone     
   nome = nome.upper()  # Converte o nome para letras MAIUSCULAS
   ddd = telefone[0:2]  # Extrai o DDD (2 primeiros digitos do telefone)
   numero = telefone[2:]  # Extrai o número do telefone (a partir do 3º digito)
   print(f"Nome: {nome} | DDD: {ddd} | Telefone: {numero}")    
print("\n==================================================")
print("             PROCESSAMENTO CONCLUÍDO              ")
print("==================================================")

 