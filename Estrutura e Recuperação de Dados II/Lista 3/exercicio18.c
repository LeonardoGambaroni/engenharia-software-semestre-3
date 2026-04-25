#include <stdio.h>

/*Implemente uma funcao que retorne o 
menor valor armazenado em uma ABB nao vazia.*/

int menorABB(NoArv* raiz){
    while (raiz->esq != NULL){
        raiz = raiz->esq; 
    }
    
    return raiz->info;
}