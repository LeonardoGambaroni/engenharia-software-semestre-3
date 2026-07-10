//Crie uma função que receba uma lista de palavras e retorne a maior palavra encontrada.

String maiorPalavra(List<String>palavras){
  String maior = palavras[0];
  
  for(int i = 0; i < palavras.length; i++){
    if(palavras[i].length > maior.length){
      maior = palavras[i];
    }
  }

  return maior;
}

void main(){
  List<String>palavras = ['Leonardo', 'Tiago', 'Extremamente'];

  print(maiorPalavra(palavras));
}