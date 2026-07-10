//Crie uma função que receba uma lista de números e retorne true caso todos os números sejam positivos.

bool todosPositivos(List<int>numeros){
  for(int i = 0; i < numeros.length; i++){
    if(numeros[i] < 0){
      return false;
    }
  }
  return true;
}

void main(){
  List<int>numeros = [1, 2, 3, 4];
  List<int>numeros2 = [1, -2, 4];

  print(todosPositivos(numeros));
  print(todosPositivos(numeros2));
}