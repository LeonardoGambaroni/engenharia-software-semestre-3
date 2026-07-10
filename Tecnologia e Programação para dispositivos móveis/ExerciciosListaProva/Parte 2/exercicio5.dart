//Escreva um programa que receba uma lista de nomes e retorne uma nova lista ordenada em ordem alfabética.

void main(){
  List<String>nomes = ['Leonardo', 'Gustavo', 'Mateus', 'Tiago'];

  for(int i = 0; i < nomes.length; i++){
    for(int j = 0; j < nomes.length - 1; j++){
      if(nomes[j].compareTo(nomes[j + 1]) > 0){
        String temp = nomes[j];
        nomes[j] = nomes[j + 1];
        nomes[j + 1] = temp;
      }
    }
  }

  print(nomes);
}