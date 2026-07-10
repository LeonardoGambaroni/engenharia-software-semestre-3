//Crie uma função que receba um número inteiro e retorne o seu fatorial.

int fatorial(int num){
  int fatorial = 1;
  for(int i = num; i > 1; i--){
    fatorial *= i;
  }

  return fatorial;
}

void main(){
  print(fatorial(4));
}