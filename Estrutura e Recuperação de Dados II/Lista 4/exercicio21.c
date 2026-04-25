#include <stdio.h>;

/*Dadas duas arvores AVL, dizemos que elas sao iguais se armazenam os mesmos valores nas
mesmas posicoes, isto e, possuem a mesma estrutura e os mesmos dados correspondentes.
Implemente:
int avlIguais(NoArv* a1, NoArv* a2);*/

int avlIguais(NoArv* a1, NoArv* a2){
    if (a1 == NULL && a2 == NULL) return 1;
    if (a1 == NULL || a2 == NULL) return 0;

    return (a1->valor == a2->valor) && avlIguais(a1->esq, a2->esq) && avlIguais(a1->dir, a2->dir);
}
