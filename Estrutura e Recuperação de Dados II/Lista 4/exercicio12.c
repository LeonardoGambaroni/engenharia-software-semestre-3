#include <stdio.h>

/*Implemente uma funcao que retorne 1 se a arvore estiver 
perfeitamente balanceada na raiz, e 0 caso contrario.*/

int raizPerfeitamenteBalanceada(NoArv* raiz){
    if(raiz == NULL) return 0;

    return fatorBalanceamento(raiz) == 0;
}
