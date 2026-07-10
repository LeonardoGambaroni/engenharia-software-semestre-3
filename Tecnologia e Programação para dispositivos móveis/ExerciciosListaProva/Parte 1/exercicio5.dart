//Crie um programa que percorra uma lista de números inteiros e exiba apenas os números positivos

void main (){
  List<int>numeros = [1, -1, 2, -2, 3, -3, 7, -14];

  for(int i = 0; i < numeros.length; i++){
    if(numeros[i] > 0){
      print('Numeros Positivos: ${numeros[i]}');
    }
  }
}
