#include <stdio.h>
/*Implemente:
void removerAcimaDoPreco(Lista* lista, float limite);
Regras:
• Remova todos os nós cujo preco > limite.
• Trate corretamente a remoção do primeiro nó.
• Atualize tamanho a cada remoção.
*/
//Produto 
typedef struct No {
    //Codigo do produto
    int codigo;
    // Preço do produto
    float preco;
    //Proximo No a ser acessado
    struct No* proxNo;
} No;

//lista de produtos
typedef struct {
    //O endereço do primeiro Produto
    No* inicio;
    //Tamanho da lista
    int tamanho;
} Lista;

void removerAcimaDoPreco(Lista* lista, float limite){
    if (lista == NULL) return;
    
    No* anterior = NULL;
    No* atual = lista->inicio;
    
    while(atual != NULL){
        if(atual->preco > limite){
            No* apagar = atual;
            atual = atual->proxNo;
            if(anterior == NULL){
                lista->inicio = apagar->proxNo;
            }
            else{
                anterior->proxNo = apagar->proxNo;
            }
            free(apagar);
            lista->tamanho--;
        }
        else {
            anterior = atual;
            atual = atual->proxNo;
        }
    }
    
}
