#include <stdio.h>

/*Implemente uma funcao que retorne a 
quantidade de nos folha de uma arvore*/

int contarFolhas(NoArv* raiz){
    if(raiz == NULL) return 0;

    if(raiz->esq == NULL && raiz->dir == NULL){
        return 1;
    }

    return contarFolhas(raiz->esq) + contarFolhas(raiz->dir);
}