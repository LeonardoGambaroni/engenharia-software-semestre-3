/*Crie uma função chamada calcularMMC que receba dois números inteiros representando denominadores de frações e retorne o menor múltiplo comum entre eles. 
Essa função será útil em situações nas quais precisamos somar ou comparar frações com denominadores diferentes.

A função deve:

- receber dois parâmetros inteiros;
- ndão aceitar denominadores iguais a zero;
- funcionar corretamente mesmo quando os valores recebidos forem negativos;
- retornar sempre um número inteiro positivo;
- usar uma estratégia baseada no cálculo do MDC ou outra abordagem matematicamente correta.*/

int calcularMDC(int a, int b){
  a = a.abs();
  b = b.abs();

  while(b != 0){
    int temp = b;
    b = a % b;
    a = temp;
  }

  return a;
}


int calcularMMC(int a, int b){
  if(a == 0 || b == 0){
    throw ArgumentError('Os denominadores não podem ser zero');
  }

  a = a.abs();
  b = b.abs();

  int mdc = calcularMDC(a,b);
  int mmc = a * b ~/ mdc;

  return mmc;
}

void main(){
  print(calcularMMC(4, 6));
  print(calcularMMC(-8, 12));
}