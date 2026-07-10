//Escreva uma função que receba uma frase e retorne a quantidade de vogais existentes nela.

int quantidadeVogais (String frase){
  int cont = 0;
  for(int i = 0; i < frase.length; i++){
    if(frase[i] == 'a' || frase[i] == 'e' || frase[i] == 'i' || frase[i] == 'o' || frase[i] == 'u'){
      cont++;
    }
  }
  return cont;
}


void main(){
  String frase = 'o tiago e gay';

  print(quantidadeVogais(frase));
}