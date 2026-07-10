//Retornar uma nova lista - Crie uma funcao chamda: List<double> dobrarValores(List<double> valores)

List<double> dobrarValores(List<double> valores){
  //double dobro = 0;
  List<double> novaLista = [];
  for(int i = 0; i < valores.length; i++){
    //dobro = valores[i] * 2;
    //novaLista.add(dobro);
    novaLista.add(valores[i] * 2);
  }

  return novaLista;
}

void main() {
  List<double> valores = [2.0, 5.0, 10.0];

  print(dobrarValores(valores));
}