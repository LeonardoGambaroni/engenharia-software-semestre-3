//Crie uma função chamada somarLista que receba uma lista de números inteiros e retorne a soma de todos os elementos.

int somarLista (List<int>numeros){
  int soma = 0;
  for (int i = 0; i < numeros.length; i++){
    soma += numeros[i];
  }
  return soma;
}

void main(){
  List<int>numeros = [1, 2, 3, 4, 5];
  print(somarLista(numeros));
}