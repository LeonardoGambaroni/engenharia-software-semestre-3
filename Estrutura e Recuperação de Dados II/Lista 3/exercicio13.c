#include <stdio.h>

/*Implemente uma funcao que retorna um ponteiro para o no que contem valor, ou NULL
caso ele nao esteja na arvore*/

NoArv* buscarABB (NoArv* raiz, int valor){
    if (raiz == NULL || raiz->info == valor) return raiz;
    if (valor < raiz->info){
        return buscarABB(raiz->esq, valor);
    } else {
        return buscarABB(raiz->dir, valor);
    }
}