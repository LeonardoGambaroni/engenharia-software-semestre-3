//Escreva um programa que receba uma lista de nomes e exiba somente os nomes que tenham mais de cinco letras.

void main(){
  List<String>nomes = ['Teo', 'Joao', 'Lucas', 'Leonardo', 'Eduardo'];

  for(int i = 0; i < nomes.length; i++){
    if(nomes[i].length > 5){
      print(nomes[i]);
    }
  }
}
