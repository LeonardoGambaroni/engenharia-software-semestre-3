//Crie uma classe chamada Aluno com os atributos nome, matricula e notaFinal. Depois, crie dois objetos dessa classe e exiba seus dados.

class Aluno{
  String nome;
  String matricula;
  double notaFinal;

  Aluno (this.nome, this.matricula, this.notaFinal);
}

void main(){
  Aluno a1 = Aluno ('Leonardo', 'Terceiro Semestre', 8.5);
  Aluno a2 = Aluno ('Tiago', 'Terceiro Semestre', 4);

  print('Aluno 1: ${a1.nome}, ${a1.matricula}, ${a1.notaFinal}\nAluno 2: ${a2.nome}, ${a2.matricula}, ${a2.notaFinal}');
}