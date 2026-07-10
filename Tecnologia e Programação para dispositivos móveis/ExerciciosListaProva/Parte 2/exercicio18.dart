//Crie uma classe chamada Contato com nome, telefone e email. Depois, crie uma função que busque um contato pelo nome em uma lista de contatos

class Contato{
  String nome;
  String telefone;
  String email;

  Contato(this.nome, this.telefone, this.email);
}

Contato? buscarContato(List<Contato>contatos, String nomeBuscado){
  for(int i = 0; i < contatos.length; i++){
    if(contatos[i].nome == nomeBuscado){
      return contatos[i];
    }
  }

  return null;
}

void main() {
  List<Contato> contatos = [
    Contato(
      'Leonardo',
      '11999999999',
      'leo@gmail.com',
    ),
    Contato(
      'Artur',
      '11888888888',
      'artur@gmail.com',
    ),
    Contato(
      'Carlos',
      '11777777777',
      'carlos@gmail.com',
    ),
  ];

  Contato? contatoEncontrado =
      buscarContato(contatos, 'Artur');

  if (contatoEncontrado != null) {
    print('Nome: ${contatoEncontrado.nome}');
    print('Telefone: ${contatoEncontrado.telefone}');
    print('Email: ${contatoEncontrado.email}');
  } else {
    print('Contato não encontrado.');
  }
}