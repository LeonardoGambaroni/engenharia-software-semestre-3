//Lista não pode ser vazia - Crie uma função: double calcularMaiorValor(List<double> valores)
//Se a lista estiver vazia, deve lançar: throw ArgumentError("Lista vazia");

double calcularMaiorValor(List<double> valores){
  if(valores.length == 0){
    throw ArgumentError('Lista vazia!!!');
  }
  double maior = valores[0];
  for (int i = 0; i < valores.length; i++){
    if(valores[i] > maior){
      maior = valores[i];
    }
  }

  return maior;
}

void main(){
  List<double> valores = [10,5,20,8];

  print(calcularMaiorValor(valores));
}