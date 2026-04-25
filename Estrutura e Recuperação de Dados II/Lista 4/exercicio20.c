#include <stdio.h>;

/*Uma rede de bibliotecas organiza os livros raros por codigo em uma AVL. Para manutencao
do sistema, deseja-se identificar rapidamente situacoes especıficas. Implemente as funcoes
abaixo:
. uma funcao que conte quantas folhas existem na AVL;
. uma funcao que retorne o menor valor armazenado;
. uma funcao que retorne o maior valor armazenado.*/

int contarFolhasAVL(NoArv* raiz){
    if (raiz == NULL) return 0;
    if (raiz->esq == NULL && raiz->dir == NULL) return 1;

    return contarFolhasAVL(raiz->esq) + contarFolhasAVL(raiz->dir);
}

int menorAVL(NoArv* raiz){
    while (raiz->esq != NULL){
        raiz = raiz->esq;
    }
    
    return raiz->valor;
}

int maiorAVL(NoArv* raiz){
    while (raiz->dir != NULL){
        raiz = raiz->dir;
    }
    return raiz->valor;
}