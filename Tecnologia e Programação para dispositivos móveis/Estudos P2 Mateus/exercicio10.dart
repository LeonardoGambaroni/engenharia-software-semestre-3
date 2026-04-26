/*Lista com 10 numeros.
. informar o maior
. informar o menor
. media
. qtd pares
. qtd impares
*/

void main(){
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int pares = 0;
  int impares = 0;
  int maior = -9999;
  int menor = 9999;
  int soma = 0;
  for (int i = 0; i < lista.length; i++){
    if(lista[i] > maior){
      maior = lista[i];
    }
    if (lista[i] < menor){
      menor = lista[i];
    }

    if (lista[i] % 2 == 0){
      pares++;
    }
    else {
      impares++;
    }

    soma += lista[i];
    
  }

  double media = soma / lista.length;

  print("Numero de pares: $pares");
  print("Numero de impares: $impares");
  print("Maior numero: $maior");
  print("Menor numero: $menor");
  print("Media: $media");
  
}