#include <stdio.h>

/*Implemente uma função que retorne a altura de uma arvore*/

int altura(NoArv* raiz){
    int he, hd;

    if (raiz == NULL) return -1;

    he = altura(raiz->esq);
    hd = altura(raiz->dir);

    return 1 + (he > hd ? he : hd);
}