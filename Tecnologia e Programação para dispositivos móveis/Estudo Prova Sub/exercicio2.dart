//Média dos valores - Crie uma função: double calcularMedia(List<double> notas)

double calcularMedia(List<double> notas){
  double soma = 0;
  double media = 0;

  for(int i = 0; i < notas.length; i++){
    soma += notas[i];
    media = soma/notas.length;
  }

  return media;
}

void main(){
  List<double> notas = [8.0, 6.0, 10.0];

  print(calcularMedia(notas));
}



