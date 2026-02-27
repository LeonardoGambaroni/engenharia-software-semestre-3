//EXERCICIO 17
class Produto {
  String nome;
  double preco;
  
  Produto (this.nome, this.preco);
  
  String etiqueta () {
    return "$nome - R\$ $preco";
  } 
}

void main (){
  Produto p1 = Produto ("Notebook", 3500.0);
  Produto p2 = Produto ("Iphone", 4600.0);
  
  print(p1.etiqueta());
  print(p2.etiqueta());
}
