//Crie uma função chamada calcularMedia que receba uma lista de números decimais 
//e retorne a média dos valores. Caso a lista esteja vazia, a função deve retornar 0

double calcularMedia(List<double>numeros){
  double soma = 0;
  if(numeros.length == 0) return 0;

  for(int i = 0; i < numeros.length; i++){
    soma += numeros[i];
    
  }
  double media = soma/numeros.length;
  return media;
}

void main(){
  List<double>numeros = [1.5, 1.5, 0, 1];
  List<double>numeros2 = [];
  print(calcularMedia(numeros));
  print(calcularMedia(numeros2));
}