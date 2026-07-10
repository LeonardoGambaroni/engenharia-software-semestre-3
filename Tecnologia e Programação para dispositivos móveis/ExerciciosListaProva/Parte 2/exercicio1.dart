//Crie um programa que receba uma palavra e informe se ela é um palíndromo. 
//Uma palavra é palíndromo quando pode ser lida da mesma forma da esquerda para a direita e da direita para a esquerda.

void main(){
  String palavra = 'arara';
  String invertida = '';
  for(int i = palavra.length - 1; i >= 0; i--){
    invertida += palavra[i];
  }

  if(palavra == invertida){
    print('A palavra ${palavra} é um palindromo');
  }
  else {
    print('A palavra ${palavra} não é um palindromo');
  }
}