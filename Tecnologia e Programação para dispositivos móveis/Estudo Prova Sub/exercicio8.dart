//O mais parecido com a Questão 1 da prova - Crie: List<double> calcularErrosQuadrados(List<double> reais,List<double> previstos)

List<double> calcularErrosQuadrados(List<double> reais, List<double> previstos){
  if(reais.length == 0 || previstos.length == 0){
    throw ArgumentError("Listas vazias!!!");
  }
  if(reais.length != previstos.length){
    throw ArgumentError("Listas devem ter o mesmo tamanho!!!");
  }
  List<double> resultado = [];
  double erro = 0;
  double erroQuadratico = 0;
  for(int i = 0; i < reais.length; i++){
    erro = reais[i] - previstos[i];
    erroQuadratico = erro * erro;
    resultado.add(erroQuadratico);    
  }

  return resultado;
}

void main(){
  List<double> reais = [10,20,30];
  List<double> previstos = [11,18,25];

  print(calcularErrosQuadrados(reais, previstos));
}