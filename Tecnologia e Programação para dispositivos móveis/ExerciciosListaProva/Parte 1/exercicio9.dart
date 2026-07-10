//Crie um mapa (Map) que represente um aluno, contendo nome, matrícula, curso e nota final. Depois, exiba cada informação em uma linha.

void main(){
  Map<String, dynamic> aluno = {
    'nome' : 'Leonardo',
    'matricula' : 'terceiro semestre',
    'curso' : 'Engenharia de Software',
    'nota_final' : '8'
  };

  print('Aluno: ${aluno['nome']}, ${aluno['matricula']}, ${aluno['curso']}, ${aluno['nota_final']}');
}