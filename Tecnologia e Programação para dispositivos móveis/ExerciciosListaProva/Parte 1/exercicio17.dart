//Crie uma classe chamada Tarefa com os atributos titulo, descricao e concluida. 
//Adicione um método chamado marcarComoConcluida, que altere o valor de concluida para true.

class Tarefa{
  String titulo;
  String descricao;
  bool concluida;

  Tarefa(this.titulo, this.descricao, this.concluida);

  void marcarComoConcluida(){
    concluida = true;
  }

}

void main() {
  Tarefa t1 = Tarefa(
  'Estudar Dart',
  'Fazer exercícios de classes',
  false,
  );

  print('Concluída? ${t1.concluida}');

  t1.marcarComoConcluida();

  print('Concluída? ${t1.concluida}');
}

