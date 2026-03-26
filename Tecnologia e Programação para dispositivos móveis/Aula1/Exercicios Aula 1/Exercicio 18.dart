//EXERCICIO 18
class Produto {
  String nome;
  double preco;
  
  Produto (this.nome, this.preco);
  
  String etiqueta () {
    return "$nome - R\$ ${preco.toStringAsFixed(2)}";
  } 
}

class Carrinho {
  List<Produto> produtos = [];
  
  void adicionar (Produto p) {
    produtos.add(p);
  }
  
  double total () {
    double soma = 0;
    
    for (var produto in produtos) {
      soma += produto.preco;
    }
    
    return soma;
  }
}

void main (){
  Produto p1 = Produto ("Notebook", 3500.0);
  Produto p2 = Produto ("Mouse", 120.50);
  Produto p3 = Produto ("Teclado", 250.0);
  
  Carrinho carrinho = Carrinho();
  
  carrinho.adicionar(p1);
  carrinho.adicionar(p2);
  carrinho.adicionar(p3);
  
  print("Total: R\$ ${carrinho.total().toStringAsFixed(2)}");
}
