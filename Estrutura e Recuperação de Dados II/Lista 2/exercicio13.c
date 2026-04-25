#include <stdio.h>

/*Função deve retornar 1 se o valor estiver na lista 
e retornar 0 se nao estiver.*/

int contem(Lista* lista, int valor){
    NoLista* atual = lista->inicio;

    while(atual != NULL){
        if (atual->valor == valor){
            return -1;
        }
        atual = atual->prox;
    }
    return 0;
}