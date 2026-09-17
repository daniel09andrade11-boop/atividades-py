  # PROVA PRÁTICA AV2 - 3º BIMESTRE
 # ARQUIVO: av2_sistema_modular.py
 # Nome do Aluno:
 # Data:
 # Link do Repositório:

# Lista inicial de dados brutos sobre jogadores de futebol
# Formato: "nome_completo;posição;telefone"
dados_brutos = [
    "  neymar junior;atacante;11988887777  ",
    "  vinicius junior;atacante;21977776666  ",
    "  casemiro;meio-campo;31966665555  "
]

def limpar_e_formatar_texto(texto):
    """
    FUNÇÃO 1:
    - Remove espaços extras das pontas.
    - Converte o texto para letras maiúsculas.
    - Retorna o texto formatado.
    """
    return texto.strip().upper()
]

def extrair_codigo_ou_ddd(dado):
    """
    FUNÇÃO 2:
    - Remove espaços das pontas.
    - Utiliza fatiamento de string [x:y].
    - Extrai os 2 primeiros dígitos.
    """
    dado = dado.strip()
    return dado[0:2]


def processar_e_exibir_cadastros(lista_dados):
    """
    FUNÇÃO 3:
    - Percorre a lista usando FOR.
    - Separa os dados usando split(";").
    - Formata nome e posição usando a Função 1.
    - Extrai o DDD usando a Função 2.
    - Exibe os dados usando f-string.
    - Retorna a quantidade de jogadores processados.
    """
    total = 0

    for dado in lista_dados:
        partes = dado.split(";")

        nome = limpar_e_formatar_texto(partes[0])
        posicao = limpar_e_formatar_texto(partes[1])
        telefone = partes[2]

        ddd = extrair_codigo_ou_ddd(telefone)

        print(f"Jogador: {nome}")
        print(f"Posição: {posicao}")
        print(f"DDD/Código: {ddd}")
        print("-" * 50)

        total += 1

    return total


def main():
    print("==================================================")
    print("       SISTEMA DE FUTEBOL MODULARIZADO - AV2")
    print("==================================================\n")

    print("Iniciando o processamento dos jogadores...\n")

    # Chamada da Função 3 passando a lista de jogadores
    total_processado = processar_e_exibir_cadastros(dados_brutos)

    # Exibe a quantidade total de jogadores processados
    print(f"\nTotal de jogadores processados: {total_processado}")

    print("\n==================================================")
    print("             PROCESSAMENTO CONCLUÍDO")
    print("==================================================")


# Execução do programa
if __name__ == "__main__":
    main()
 
