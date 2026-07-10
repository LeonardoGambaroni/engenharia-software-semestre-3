//Crie uma função que receba duas listas de números (mesma quantidade) e retorne uma lista que represente a diferença entre os números. 
//Se as listas passadas não tiverem a mesma quantidade de números, lançar uma exceção ArgumentException.

List diferencaNumeros(List<int>numeros, List<int>numeros2){
  if(numeros.length != numeros2.length){
    throw ArgumentError('Listas com tamanhos diferentes');
  }
  int diferenca = 0;
  List<int>resultado = [];
  for(int i = 0; i < numeros.length; i++){
      diferenca = numeros[i] - numeros2[i];
      resultado.add(diferenca);
    
  }

  return resultado;
}

void main(){
  List<int>numeros = [4, 8, 12, 16];
  List<int>numeros2 = [2, 7, 8, 14];

  print(diferencaNumeros(numeros, numeros2));
}