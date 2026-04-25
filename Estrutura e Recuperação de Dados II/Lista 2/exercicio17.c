#include <stdio.h>

/*A função deve inserir um novo valor no fim da fila. Lembre-se de
considerar o caso em que a fila esta inicialmente vazia.*/

void enfileirar(Fila* fila, int valor){
    NoFila* novo = (NoFila*) malloc(sizeof(NoFila));
    novo->valor = valor;
    novo->prox = NULL;

    if (fila->inicio == NULL){
        fila->inicio = novo;
        fila->fim = novo;
    } else {
        fila->fim->prox = novo;
        fila->fim = novo;
    }

    fila->tamanho++;
}