//Crie uma classe chamada Produto com os atributos nome, preco e quantidadeEmEstoque. 
//Adicione um método chamado valorTotalEmEstoque, que retorne o valor total daquele produto no estoque.

class Produto{
  String nome;
  double preco;
  int quantidadeEmEstoque;

  Produto(this.nome, this.preco, this.quantidadeEmEstoque);

  double valorTotalEmEstoque(){
    double total = quantidadeEmEstoque * preco;
    return total;
  }
}

void main(){
  Produto p1 = Produto ('caneta', 2, 10);

  print('Produto: ${p1.nome}, ${p1.preco} reais, ${p1.quantidadeEmEstoque}');
  print('Valor Total em estoque: ${p1.valorTotalEmEstoque()}');
}