//Crie uma classe chamada Livro com título, autor e ano de publicação. 
//Depois, escreva uma função que receba uma lista de livros e retorne apenas os livros publicados depois de 2020.

class Livro{
  String titulo;
  String autor;
  int anoPublicacao;

  Livro(this.titulo, this.autor, this.anoPublicacao);
}

List<Livro> publicadosAposAno(List<Livro>livros){
  List<Livro> resultado = [];
  for (int i = 0; i < livros.length; i++) {
    if (livros[i].anoPublicacao > 2020) {
      resultado.add(livros[i]);
    }
  }

  return resultado;
}

void main() {
  List<Livro> livros = [
    Livro('Dom Casmurro', 'Machado de Assis', 1899),
    Livro('Clean Code', 'Robert Martin', 2008),
    Livro('Flutter Avançado', 'João Silva', 2022),
    Livro('Dart Moderno', 'Maria Souza', 2023),
  ];

  List<Livro> recentes = publicadosAposAno(livros);

  for (int i = 0; i < recentes.length; i++) {
    print('Título: ${recentes[i].titulo}');
    print('Autor: ${recentes[i].autor}');
    print('Ano: ${recentes[i].anoPublicacao}');
    print('----------------');
  }
}