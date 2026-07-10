//Crie uma função chamada buscarNome que receba uma lista de nomes e um nome buscado. 
//A função deve retornar true caso o nome exista na lista e false caso contrário.

bool buscarNome (List<String>nomes, String nome_buscado){
  for(int i = 0; i < nomes.length; i++){
    if(nomes[i] == nome_buscado){
      return true;
    }
  }
  return false;
}

void main(){
  List<String>nomes = ['Leonardo', 'Joao', 'Eduarda', 'Artur'];

  String nome_buscado = 'Leonardo';
  print(buscarNome(nomes, nome_buscado));

  String nome_buscado2 = 'Carol';
  print(buscarNome(nomes, nome_buscado2));
}