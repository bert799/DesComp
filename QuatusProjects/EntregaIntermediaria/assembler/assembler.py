# Converte o valor após o caractere arroba '@'
# em um valor hexadecimal de 2 dígitos (9 bits)

from os import error


def converteArroba(line):
    line = line.split('@')
    if line[1].isnumeric():
        lsb = "{:0>9b}".format(int(line[1].replace(" ", "").replace("\n", "")))
    else:
        lsb = "{:0>9b}".format(labels[line[1]])
    if len(lsb) > 9:
        print("--> Excedeu o número de Bits disponíveis para endereçar Periféricos ou ROM")
        raise error
    return lsb

# Converte o valor após o caractere cifrão'$'
# em um valor hexadecimal de 2 dígitos (8 bits)


def converteCifrao(line):
    line = line.split('$')
    lsb = '0' + "{:0>8b}".format(int(line[1].replace(" ", "").replace("\n", "")))
    if len(lsb) > 9:
        print("--> Excedeu o número de Bits disponíveis para Imediato")
        raise error
    return lsb

# Define a string que representa o comentário
# a partir do caractere cerquilha '#'


def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

# Remove o comentário a partir do caractere cerquilha '#',
# deixando apenas a instrução


def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line

# Consulta o dicionário e "converte" o mnemônico em
# seu respectivo valor em hexadecimal


def trataMnemonico(line):
    line = line.replace("\n", "")  # Remove o caracter de final de linha
    line = line.replace("\t", "")  # Remove o caracter de tabulacao
    line = line.split(' ')
    if line[0] in mne.keys():
        mne_conv = mne[line[0]]
    else:
        line[0] = mne["NOP"]
        print(f"--> A instrução '{line[0]}' não existe... Substituido por NOP")
    return mne_conv, "".join(line)

def trataRegistrador(line):
    line = line.split('R[')
    registrador = line[1].split("]")[0]
    reg = "{:0>3b}".format(int(registrador))
    if len(reg) > 3:
        print("--> Excedeu o número de Bits disponíveis para endereçar registradores")
        raise error
    return reg

assembly = "ASM.txt"  # Arquivo de entrada que contém o assembly
destinoBIN = 'BIN.txt'  # Arquivo de saída que contém o binário formatado para VHDL

# definição dos mnemônicos e seus
# respectivos OPCODEs (em Hexadecimal)
mne = {
    "NOP":   '0000',
    "LDA":   '0001',
    "SOMA":  '0010',
    "SUB":   '0011',
    "LDI":   '0100',
    "STA":   '0101',
    "JMP":   '0110',
    "JEQ":   '0111',
    "CEQ":   '1000',
    "JSR":   '1001',
    "RET":   '1010',
    "OPAND": '1011'
}

labels = {}

with open(assembly, "r") as f:  # Abre o arquivo ASM
    lines = f.readlines()  # Verifica a quantidade de linhas

cont_instructions = -1  # Cria uma variável para contagem

for line in lines:
    # Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
    if (line.startswith('\n') or line.startswith(' ')):
        line = line.replace("\n", "")
        print("-- Sintaxe invalida" + ' na Linha: ' +
                ' --> (' + line + ')')  # Print apenas para debug

    # Se a linha for válida para conversão, executa
    else:
        if not line.startswith('#'):
            instrucaoLine = defineInstrucao(line).replace("\n", "").replace(" ", "")  # Define a instrução. Ex: JSR @14
            if ':' in instrucaoLine:
                labels[instrucaoLine.replace(":", "")] = cont_instructions+1
            else:
                cont_instructions += 1

new_lines = []

cont_instructions = -1  # Cria uma variável para contagem
print(labels)
for line in lines:

    # Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
    if (line.startswith('\n') or line.startswith(' ')):
        line = line.replace("\n", "")
        print("-- Sintaxe invalida" + ' na Linha: ' +
                ' --> (' + line + ')')  # Print apenas para debug

    # Se a linha for válida para conversão, executa
    else:
        if line.startswith('#'):
            new_lines.append("-- " + line.replace("\n", ""))
        else:
            comentarioLine = defineComentario(line).replace("\n", "")
            instrucaoLine = defineInstrucao(line).replace("\n", "")  # Define a instrução. Ex: JSR @14
            if ':' in instrucaoLine:
                new_lines.append("-- " + comentarioLine)
            else:
                cont_instructions += 1
                # Trata o mnemonico. Ex(JSR @14): x"9" @14
                mne_conv, instrucaoLine = trataMnemonico(instrucaoLine)

                if '@' in instrucaoLine:  # Se encontrar o caractere arroba '@'
                    lsb = converteArroba(instrucaoLine)

                elif '$' in instrucaoLine:  # Se encontrar o caractere cifrao '$'
                    lsb = converteCifrao(instrucaoLine)

                else:  # Senão, se a instrução nao possuir nenhum imediator, ou seja, nao conter '@' ou '$'
                    lsb = "{:0=9b}".format(0)

                if 'R[' in instrucaoLine:
                    reg = trataRegistrador(instrucaoLine)
                else:
                    reg = "{:0=3b}".format(0)

                # Entrada => JSR @14 #comentario1
                # Saída =>   tmp(0):= "1001000001110";	-- JSR @14 	#comentario1
                new_lines.append(f'tmp({cont_instructions}):= '+ '"' + mne_conv + reg + lsb + '";' + "\t-- " + comentarioLine)  # Escreve no arquivo BIN.txt

with open(destinoBIN, "w") as f:  # Abre o destino BIN
    for line in new_lines:        # Escreve todas as linhas
        f.write("%s\n" % line)