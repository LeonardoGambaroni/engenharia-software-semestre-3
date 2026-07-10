//Crie uma função que receba uma lista de números inteiros e retorne uma nova lista contendo apenas os números pares.

List retornaListaPares (List<int>numeros){
  List<int>pares = [];
  for(int i = 0; i < numeros.length; i++){
    if(numeros[i] % 2 == 0){
      pares.add(numeros[i]);
    }
  }
  return pares;
}

void main(){
  List<int>numeros = [1, 2, 3, 4, 5, 6];

  print(retornaListaPares(numeros));
}