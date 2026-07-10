//Escreva um programa que simule uma fila de atendimento. O programa deve permitir adicionar pessoas à fila, atender a primeira pessoa e exibir a fila atual.

void adicionarPessoa(List<String>fila, String nome){
  fila.add(nome);

  print('${nome} adicionado/a a fila');
}

void atenderPessoa(List<String>fila){
  if(fila.isEmpty){
    print('Fila Vazia!!');
    return;
  }
  
  String pessoaAtendida = fila.removeAt(0);

  print('$pessoaAtendida foi atendido/a.');
}

void exibirFila(List<String>fila){
  if(fila.isEmpty){
    print('Fila Vazia.');
    return;
  }
  print('Fila atual: $fila');
}

void main() {
  List<String> fila = [];

  adicionarPessoa(fila, 'Leonardo');
  adicionarPessoa(fila, 'Artur');
  adicionarPessoa(fila, 'Carlos');

  exibirFila(fila);

  print('');

  atenderPessoa(fila);

  print('');

  exibirFila(fila);
}