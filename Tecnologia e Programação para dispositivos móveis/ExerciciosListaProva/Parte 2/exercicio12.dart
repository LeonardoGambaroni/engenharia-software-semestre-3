//Escreva um programa que receba uma lista de notas e remova todas as notas inválidas. Considere inválidas as notas menores que 0 ou maiores que 10.

void main(){
  List<int>notas = [5, 7, -4, 11, 9, 3, 12, -6];

  for(int i = notas.length - 1; i>= 0; i--){
    if(notas[i] < 0 || notas[i] > 10){
      notas.remove(notas[i]);
    }
  }

  print('Notas: ${notas}');

}