//Crie um desafio integrador: implemente uma agenda simples em Dart usando classes, listas e funções. 
//A agenda deve permitir cadastrar contatos, listar contatos, buscar por nome e remover um contato.
//Sem banco de dados, tudo em memória.

class Contato {
  String nome;
  String telefone;
  String email;

  Contato(this.nome, this.telefone, this.email);
}

void cadastrarContato(List<Contato> agenda, Contato contato) {
  agenda.add(contato);
  print('Contato cadastrado com sucesso!');
}

void listarContatos(List<Contato> agenda) {
  if (agenda.isEmpty) {
    print('Agenda vazia.');
    return;
  }

  for (int i = 0; i < agenda.length; i++) {
    print('Nome: ${agenda[i].nome}');
    print('Telefone: ${agenda[i].telefone}');
    print('Email: ${agenda[i].email}');
    print('-------------------');
  }
}

Contato? buscarPorNome(List<Contato> agenda, String nomeBuscado) {
  for (int i = 0; i < agenda.length; i++) {
    if (agenda[i].nome == nomeBuscado) {
      return agenda[i];
    }
  }

  return null;
}

void removerContato(List<Contato> agenda, String nomeBuscado) {
  for (int i = 0; i < agenda.length; i++) {
    if (agenda[i].nome == nomeBuscado) {
      agenda.removeAt(i);
      print('Contato removido com sucesso!');
      return;
    }
  }

  print('Contato não encontrado.');
}

void main() {
  List<Contato> agenda = [];

  cadastrarContato(
    agenda,
    Contato('Leonardo', '11999999999', 'leo@gmail.com'),
  );

  cadastrarContato(
    agenda,
    Contato('Artur', '11888888888', 'artur@gmail.com'),
  );

  cadastrarContato(
    agenda,
    Contato('Carlos', '11777777777', 'carlos@gmail.com'),
  );

  print('--- LISTA DE CONTATOS ---');
  listarContatos(agenda);

  print('--- BUSCAR CONTATO ---');
  Contato? contatoEncontrado = buscarPorNome(agenda, 'Artur');

  if (contatoEncontrado != null) {
    print('Contato encontrado:');
    print('Nome: ${contatoEncontrado.nome}');
    print('Telefone: ${contatoEncontrado.telefone}');
    print('Email: ${contatoEncontrado.email}');
  } else {
    print('Contato não encontrado.');
  }

  print('--- REMOVER CONTATO ---');
  removerContato(agenda, 'Carlos');

  print('--- LISTA ATUALIZADA ---');
  listarContatos(agenda);
}