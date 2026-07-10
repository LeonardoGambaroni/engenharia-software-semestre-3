//Soma de valores - Crie uma função em Dart chamada: double calcularSoma(List<double> valores)

double calcularSoma(List<double> valores){
  double soma = 0;

  for(int i = 0; i < valores.length; i++){
    soma += valores[i];
  }

  return soma;
}

void main(){
  final valores = [10.0, 20.0, 30.0];

  print(calcularSoma(valores));
}