#include <stdio.h>

/*Busca do maior preco (retornar ponteiro para o nó)
Implemente:

Regras:
• Retorne um ponteiro para o nó com maior preco.
• Se a lista estiver vazia, retorne NULL
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

//Vai vir uma Lista
No* encontrarMaiorPreco(Lista* lista){
    //verifica se a lista é vazia
    if(lista == NULL)return NULL;
    No* atual = lista->inicio;
    No* maior = atual;
    while(atual  != NULL){
        atual = atual->proxNo;
        if(atual->preco>maior->preco){
            maior = atual;
        }
    }
    return maior;
}
