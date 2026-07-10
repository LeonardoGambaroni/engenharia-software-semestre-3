//Crie uma função que receba uma lista de números inteiros e retorne uma nova lista sem valores repetidos.

List removeRepetidos(List<int>numeros){
  List<int> novaLista = [];

  for(int i = 0; i < numeros.length; i++){
    if(!novaLista.contains(numeros[i])){
      novaLista.add(numeros[i]);
    }
  }

  return novaLista;
}

void main(){
  List<int>numeros = [1, 1, 2, 3, 5, 7, 6, 6];

  print(removeRepetidos(numeros));
}