#include <sdio.h>

/*Faca uma funcao que espelhe uma arvore binaria, trocando recursivamente as sub arvores
esquerda e direita de todos os nos.*/

void espelhaArvore(NoArv* raiz){
    NoArv* temp;

    if (raiz == NULL) return;

    temp = raiz->esq;
    raiz->esq = raiz->dir;
    raiz->dir = temp;

    espelhaArvore(raiz->esq);
    espelhaArvore(raiz->dir);
}