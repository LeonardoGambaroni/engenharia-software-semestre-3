//Na classe Aluno, crie um método chamado estaAprovado que retorne true caso a notaFinal seja maior ou igual a 6, e false caso contrário.

class Aluno{
  String nome;
  String matricula;
  double notaFinal;

  Aluno (this.nome, this.matricula, this.notaFinal);

  bool estaAprovado(){
    if(notaFinal >= 6){
      return true;
    }
    return false;
  }
}

void main(){
  Aluno a1 = Aluno ('Leonardo', 'Terceiro Semestre', 8.5);
  Aluno a2 = Aluno ('Tiago', 'Terceiro Semestre', 4);

  print('Aluno 1: ${a1.nome}, ${a1.matricula}, ${a1.notaFinal}, ${a1.estaAprovado()}\nAluno 2: ${a2.nome}, ${a2.matricula}, ${a2.notaFinal}, ${a2.estaAprovado()}');
}