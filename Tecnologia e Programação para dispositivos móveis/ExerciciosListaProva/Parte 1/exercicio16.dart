//Crie uma classe chamada ContaBancaria com os atributos titular e saldo. 
//Adicione os métodos depositar, sacar e exibirSaldo. 
//O método sacar não deve permitir saque maior que o saldo disponível.

class ContaBancaria{
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  double depositar(deposito){
    saldo += deposito;
    return saldo;
  }

  double sacar(valorSaque){
    if(valorSaque > saldo){
      print('Impossivel sacar, valor nao correspondente!!');
    }
    saldo -= valorSaque;
    return saldo;
  }

  void exibirSaldo(){
    print('Saldo: ${saldo}');
  }
}

void main(){
  ContaBancaria c1 = ContaBancaria('Leonardo', 15000);

  c1.depositar(5000);
  c1.sacar(2000);
  c1.exibirSaldo();
}