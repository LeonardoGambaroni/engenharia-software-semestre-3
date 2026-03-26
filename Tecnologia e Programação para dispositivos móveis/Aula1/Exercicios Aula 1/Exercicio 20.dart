//EXERCICIO 20
Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 1));
  
  return "OK";
  
}

Future<void> main() async {
  print("Buscando dados...");
  
  String resultado = await buscarDados();
  
  print(resultado);
}
