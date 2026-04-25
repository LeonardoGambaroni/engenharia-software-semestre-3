#include <stdio.h>

/*Função que remove o primeiro elemento de uma fila
e o retorna. Se a fila estiver vazia, retorna -1 */

int desenfileirar(Fila* fila){
    if (fila->inicio == NULL) return -1;

    NoFila* removido = fila->inicio;

    int valor = removido->valor;

    fila->inicio = removido->prox;
    if(fila->inicio == NULL){
        fila->fim = NULL;
    }
    free(removido);
    fila->tamanho--;

    return valor;
}