//Escreva um programa que simule um carrinho de compras. Cada produto deve ter nome e preço. Ao final, exiba o valor total da compra.

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

}

void main(){
  Produto p1 = Produto('Teclado', 300);
  Produto p2 = Produto('Mouse', 200);
  Produto p3 = Produto('Mousepad', 100);

  List<Produto> carrinho = [p1, p2, p3];
  
  double total = 0;

  for(int i = 0; i < carrinho.length; i++){
    total += carrinho[i].preco;
  }

  print('Valor total da compra: R\$ ${total}');
}