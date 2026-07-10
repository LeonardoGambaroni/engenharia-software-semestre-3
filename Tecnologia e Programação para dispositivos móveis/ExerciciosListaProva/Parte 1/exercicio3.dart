//Crie uma função chamada ehPar que receba um número inteiro e 
//retorne true caso ele seja par ou false caso seja ímpar. 
//Teste a função com pelo menos cinco valores diferentes.

bool ehPrimo(int numero){
  if(numero <= 1) return false;

  for (int i = 2; i < numero; i++){
    if(numero % i == 0){
      return false;
    }
  }
  return true;
}

void main(){
  print(ehPrimo(5));
  print(ehPrimo(10));
  print(ehPrimo(7));
  print(ehPrimo(6));
  print(ehPrimo(11)); 
}