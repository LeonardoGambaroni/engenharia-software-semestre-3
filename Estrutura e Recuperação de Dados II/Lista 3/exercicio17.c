#include <stdio.h>

/*Implemente uma funcao que imprima os valores
de uma ABB em ordem crescente*/

void mostrarEmOrdem(NoArv* raiz){
    if(raiz != NULL){
        mostrarEmOrdem(raiz->esq);
        printf("%d", raiz->info);
        mostrarEmOrdem(raiz->dir);
    }
}