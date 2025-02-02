import random

def shuffle(lst):
    random.shuffle(lst)

def sortear_bolas(total_bolas):
    bolas = list(range(1, total_bolas + 1))
    shuffle(bolas)

    sorteados = []
    continuar = True

    print("Sorteio de bolas do bingo:")
    while bolas and continuar:
        bola_sorteada = bolas.pop(0)
        sorteados.append(bola_sorteada)

        print(f"Bola sorteada: {bola_sorteada}")
        print("Digite 's' para parar o sorteio ou pressione Enter para continuar:")
        input_usuario = input()

        if input_usuario.lower() == 's':
            continuar = False

    sorteados.sort()

    print("\nNúmeros sorteados (ordenados):")
    for numero in sorteados:
        print(numero)

if __name__ == "__main__":
    total_bolas = 75
    sortear_bolas(total_bolas)
