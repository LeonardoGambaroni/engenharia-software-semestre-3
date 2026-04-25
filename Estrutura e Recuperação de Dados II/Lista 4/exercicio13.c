#include <stdio.h>

/*Escreva uma funcao que imprima o caminho da raiz 
ate o valor procurado, caso ele exista.*/

int mostrarCaminhoAVL(NoArv* raiz, int valor){
    if(raiz == NULL) return 0;
    printf("%d", raiz->valor);
    if (valor == raiz->valor) return 1;
    if (valor < raiz->valor){
        if (mostrarCaminhoAVL(raiz->esq, valor)) return 1;
    } else {
        if (mostrarCaminhoAVL(raiz->dir, valor)) return 1;
    }
    return 0;
}