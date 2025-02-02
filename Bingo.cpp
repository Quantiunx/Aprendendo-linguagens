#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define TOTAL_BOLAS 75

// Função para embaralhar um array
void shuffle(int *array, int n) {
    if (n > 1) {
        for (int i = 0; i < n - 1; i++) {
            int j = i + rand() / (RAND_MAX / (n - i) + 1);
            int t = array[j];
            array[j] = array[i];
            array[i] = t;
        }
    }
}

// Função para ordenar um array (método de ordenamento: insertion sort)
void insertionSort(int *array, int n) {
    for (int i = 1; i < n; i++) {
        int key = array[i];
        int j = i - 1;
        while (j >= 0 && array[j] > key) {
            array[j + 1] = array[j];
            j = j - 1;
        }
        array[j + 1] = key;
    }
}

void sortearBolas(int total_bolas) {
    int bolas[TOTAL_BOLAS];
    for (int i = 0; i < total_bolas; i++) {
        bolas[i] = i + 1;
    }

    shuffle(bolas, total_bolas);

    int sorteados[TOTAL_BOLAS];
    int sorteados_count = 0;
    char input;

    printf("Sorteio de bolas do bingo:\n");
    for (int i = 0; i < total_bolas; i++) {
        printf("Bola sorteada%d: %d\n",i, bolas[i]);
        sorteados[sorteados_count++] = bolas[i];

        printf("Digite 's' para parar o sorteio ou pressione Enter para continuar:\n");
        input = getchar();
        getchar(); // Para capturar o caractere de nova linha

        if (input == 's') {
            break;
        }
    }

    insertionSort(sorteados, sorteados_count);

    printf("\nNúmeros sorteados (ordenados):\n");
    for (int i = 0; i < sorteados_count; i++) {
        printf("%d ", sorteados[i]);
    }
    printf("\n");
}

int main() {
    srand(time(NULL));
    sortearBolas(TOTAL_BOLAS);
    return 0;
}
