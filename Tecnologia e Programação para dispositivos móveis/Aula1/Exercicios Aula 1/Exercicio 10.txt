//EXERCICIO 10
void main (){
  List<String> palavras = ['leonardo', 'software', 'paralelepipedo'];
  
  int qtd = 0;
  String maior = palavras[0];
  
  for (int i = 0; i < palavras.length; i++){
    qtd++;
    
    
    if (palavras[i].length > maior.length){
      maior = palavras[i];
    }
  }
  
  
 print('Quantidade de palavras: $qtd');
 print('Maior palavra: $maior');
}
