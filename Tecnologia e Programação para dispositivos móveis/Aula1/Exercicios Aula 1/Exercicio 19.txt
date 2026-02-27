//EXERCICIO 19
enum StatusPedido {
  aberto,
  pago,
  enviado,
  entregue
}

void verificarStatus (StatusPedido status) {
  switch (status) {
    case StatusPedido.aberto:
      print("Pedido aberto. Aguardando pagamento.");
      break;
      
    case StatusPedido.pago:
      print("Pedido pago. Preparando envio.");
      break;
    
    case StatusPedido.enviado:
      print("Pedido enviado. Em transporte.");
      break;
      
    case StatusPedido.entregue:
      print("Pedido entregue ao cliente.");
      break;
      
  }
  
}

void main () {
  verificarStatus(StatusPedido.aberto);
  verificarStatus(StatusPedido.pago);
  verificarStatus(StatusPedido.enviado);
  verificarStatus(StatusPedido.entregue);  
}
