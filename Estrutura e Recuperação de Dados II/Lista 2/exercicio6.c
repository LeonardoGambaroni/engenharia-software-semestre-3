#include <stdio.h>

/*Função que deve inserir um elemento no topo de uma pilha */

void push (Pilha* pilha, int valor){
    No* novo = (NoPilha*) malloc(sizeof(NoPilha));
    novo->valor = valor;

    novo->prox = pilha->topo;
    pilha->topo = novo;

    pilha->tamanho++;
}