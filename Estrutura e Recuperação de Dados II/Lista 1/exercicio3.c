#include <stdio.h>
/*Implemente:
void removerDuplicadosPorCodigo(Lista* lista);
Regras:
• Remova nós duplicados considerando duplicado quando codigo for igual.
• Mantenha a primeira ocorrência de cada codigo.
• Atualize tamanho a cada remoção */
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

void removerDuplicadosPorCodigo(Lista* lista){
    if (lista == NULL) return;

    No* atual = lista->inicio;

    while (atual != NULL){
        No* anterior = atual;
        No* comparar = atual->proxNo;

        while (comparar != NULL){
            if(comparar->codigo == atual->codigo){
                No* remover = comparar;
                No* comparar = comparar->proxNo;

                anterior->proxNo = remover->proxNo;
                
                free(remover);
                lista->tamanho--;
            } else {
                anterior = comparar;
                comparar = comparar->proxNo;
            }
            
        }
        atual = atual->proxNo;
    }
}