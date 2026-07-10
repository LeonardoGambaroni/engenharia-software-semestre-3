//Validação de valores inválidos - Crie: double calcularMediaSegura(List<double> notas)

double calcularMediaSegura(List<double> notas){
  if(notas.length == 0){
    throw ArgumentError("Lsita vaiza!!!");
  }
  double soma = 0;
  for(int i = 0; i < notas.length; i++){
    if(notas[i] < 0 || notas[i] > 10){
      throw ArgumentError("Nota inválida!!!");
    }

    soma += notas[i];
  }

  return soma/notas.length;
}

void main(){
  List<double> notas = [8.0, 7.5, 10.0, 9.0];

  print(calcularMediaSegura(notas));
}