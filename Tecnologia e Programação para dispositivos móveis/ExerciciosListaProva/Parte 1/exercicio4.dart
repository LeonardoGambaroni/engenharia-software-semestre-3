//Escreva uma função chamada maiorNumero que receba três números inteiros e retorne o maior deles.

int maiorNumero (int n1, n2, n3){
  int maior = n1;

  if (n2 > maior){
    maior = n2;
  }
  
  if (n3 > maior){
    maior = n3;
  }

  return maior;
}

void main(){
  print(maiorNumero(10, 9, 8));
  print(maiorNumero(10, 11, 8));
  print(maiorNumero(10, 11, 15));
}