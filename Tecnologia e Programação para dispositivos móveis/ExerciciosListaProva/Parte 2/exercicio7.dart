//Escreva um programa que conte quantas vezes cada palavra aparece em uma lista de palavras. Use um Map<String, int> para armazenar o resultado.

void main(){
  List<String>palavras = ['Maluco', 'Simplesmente', 'Maluco', 'Quente'];

  Map<String, int> contador = {};

  for(int i = 0; i < palavras.length; i++){
    String palavra = palavras[i];
    if(contador.containsKey(palavra)){
      contador[palavra] = contador[palavra]! + 1;
    } else {
      contador[palavra] = 1;
    }
  }

  print(contador);
}