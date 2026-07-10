//Diferença entre listas - Crie: List<double> calcularDiferencas(List<double> valoresA,List<double> valoresB)

List<double> calcularDiferencas(List<double> valoresA, List<double> valoresB){
  List<double> resultado = [];
  for(int i = 0; i < valoresA.length; i++){
      resultado.add(valoresA[i] - valoresB[i]);
  }

  return resultado;
}

void main(){
  List<double> valoresA = [10,20,30];
  List<double> valoresB = [8,25,20];

  print(calcularDiferencas(valoresA, valoresB));
}