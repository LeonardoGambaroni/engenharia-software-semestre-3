//Crie uma classe chamada Pedido com os atributos numero, cliente e valorTotal. 
//Depois, crie uma função que receba uma lista de pedidos e retorne o pedido de maior valor.

class Pedido{
  int numero;
  String cliente;
  double valorTotal;

  Pedido(this.numero, this.cliente, this.valorTotal);
}

Pedido maiorValor(List<Pedido>pedido){
  Pedido maior = pedido[0];
  for(int i = 0; i < pedido.length; i++){
    if(pedido[i].valorTotal > maior.valorTotal){
      maior = pedido[i];
    }
  }
  return maior;
}

void main(){
  List<Pedido> pedidos = [
    Pedido(1, 'Leonardo', 100),
    Pedido(2, 'Tiago', 500),
    Pedido(3, 'Mateus', 300),
  ];

  Pedido maiorPedido = maiorValor(pedidos);

  print('Numero: ${maiorPedido.numero}');
  print('Cliente ${maiorPedido.cliente}');
  print('Valor: ${maiorPedido.valorTotal}');
}
