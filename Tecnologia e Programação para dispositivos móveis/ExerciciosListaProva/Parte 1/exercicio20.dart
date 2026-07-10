//Crie um pequeno sistema em Dart para gerenciar uma lista de alunos.
//O sistema deve permitir cadastrar alunos, listar todos os alunos e listar apenas os alunos aprovados. 
//Use classe, lista, função e método no mesmo exercício.

class Aluno{
  String nome;
  double notaFinal;

  Aluno(this.nome, this.notaFinal);

  bool estaAprovado(){
    if(notaFinal >= 6){
      return true;
    }
    return false;
  }
}

void cadastrarAluno (List<Aluno>alunos, Aluno aluno){
  alunos.add(aluno);
}

void listarTodos(List<Aluno>alunos){
  print('--TODOS OS ALUNOS--');
  for(int i = 0; i < alunos.length; i++){
    print('Aluno: ${alunos[i].nome}, Nota: ${alunos[i].notaFinal}');
  }
}

void listarAprovados(List<Aluno>alunos){
  print('--ALUNOS APROVADOS--');
  for(int i = 0; i < alunos.length; i++){
    if(alunos[i].estaAprovado()){
      print('Aluno: ${alunos[i].nome}, Nota: ${alunos[i].notaFinal}');
    }
  }
}

void main(){
  List<Aluno>alunos = [];

  cadastrarAluno(alunos, Aluno('Leonardo', 8));
  cadastrarAluno(alunos, Aluno('Tiago', 4));
  cadastrarAluno(alunos, Aluno('Mateus', 5));

  listarTodos(alunos);

  print('\n');

  listarAprovados(alunos);
}