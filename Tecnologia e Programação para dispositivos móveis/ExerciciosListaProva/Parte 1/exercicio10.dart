//Crie uma função chamada contarAprovados que receba uma lista de mapas representando alunos. 
//Cada aluno deve ter nome e nota. A função deve retornar quantos alunos possuem nota maior ou igual a 6.

int contarAprovados (List<Map<String, dynamic>>alunos){
  int cont = 0;
  for (int i = 0; i < alunos.length; i++){
    if(alunos[i]['nota'] >= 6){
      cont++;
    }
  }
  return cont;
}

void main(){
  List<Map<String, dynamic>>alunos = [{'nome' : 'Leonardo', 'nota' : 7}, {'nome' : 'Tiago', 'nota' : 5}, {'nome': 'Mateus', 'nota': 6}];

  print(contarAprovados(alunos));
}