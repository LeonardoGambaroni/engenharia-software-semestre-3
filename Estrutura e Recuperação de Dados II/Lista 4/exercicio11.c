#include <stdio.h>

/*Implemente uma funcao que percorra uma AVL 
e conte quantos nos possuem dois filhos.*/

int contarNosComDoisFilhos(NoArv* raiz){
    if (raiz == NULL) return 0;
    int atual = (raiz->esq != NULL && raiz->dir != NULL) ? 1 : 0;
    return atual + contarNosComDoisFilhos(raiz->esq) + contarNosComDoisFilhos(raiz->dir);
}