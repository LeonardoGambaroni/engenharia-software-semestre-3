//Crie uma função que receba uma lista de números inteiros e retorne o segundo maior número da lista.

int segundoMaior(List<int>numeros){
  int maior = numeros[0];
  int maior2 = numeros[0];

  for(int i = 0; i < numeros.length; i++){
    if(numeros[i] > maior){
      maior2 = maior;
      maior = numeros[i];
    } else if(numeros[i] > maior2 && numeros[i] != maior){
      maior2 = numeros[i];
    }
    
  }

  return maior2;
}

void main(){
  List<int>numeros = [1, 2, 3, 9, 8];

  print(segundoMaior(numeros));
}