/*criar um vetor/array
. mostrar todos os numeros
. o maior numero
. a soma de todos os numeros
*/

void main(){
  List<int> numeros = [8, 3, 1, 9, 5];
  
  print(numeros);

  int maior = numeros[0];
  int soma = 0;
  for (int n in numeros){
    if (n > maior){
      maior = n;
    }
    soma += n;
  }

  print("Maior numero: $maior");
  print("Soma dos numeros: $soma");
  
}