//Duas listas com validação - Crie: List<double> calcularDiferencaAbsoluta(List<double> valoresA,List<double> valoresB)

List<double> calcularDiferencaAbsuluta(List<double> valoresA, List<double> valoresB){
  if(valoresA.length != valoresB.length){
    throw ArgumentError("Listas devem ter o mesmo tamanho!!!");
  }
  List<double> resultado = [];
  double diferenca = 0;
  for(int i = 0; i < valoresA.length; i++){
    diferenca = valoresA[i] - valoresB[i];
    resultado.add(diferenca.abs());
  }

  return resultado;
}

void main(){
  List<double> valoresA = [10,20,30];
  List<double> valoresB = [8,25,20];

  print(calcularDiferencaAbsuluta(valoresA, valoresB));
}