//Crie uma lista de objetos da classe Tarefa e escreva uma função que exiba apenas as tarefas ainda não concluídas.

class Tarefa{
  String titulo;
  String descricao;
  bool concluida;

  Tarefa(this.titulo, this.descricao, this.concluida);

  void marcarComoConcluida(){
    concluida = true;
  }

}

void naoConcluidas (List<Tarefa>tarefas){
  for(int i = 0; i < tarefas.length; i++){
    if(tarefas[i].concluida == false){
      print('Título: ${tarefas[i].titulo}');
      print('Descrição: ${tarefas[i].descricao}');
    }
  }
}
void main(){
   List<Tarefa> tarefas = [
    Tarefa('Estudar Dart', 'Fazer exercícios', false),
    Tarefa('Lavar roupa', 'Lavar roupas do quarto', true),
    Tarefa('Treinar', 'Ir para academia', false),
  ];

  naoConcluidas(tarefas);
}