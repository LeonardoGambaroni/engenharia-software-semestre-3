/* Crie uma função chamada calcularSimilaridadeCosseno que receba dois vetores numéricos representados por listas de double e retorne a similaridade entre eles usando a fórmula da similaridade do cosseno.

Esse tipo de cálculo é muito usado em aplicações modernas de Inteligência Artificial, especialmente em sistemas de recomendação, busca semântica, comparação de textos por embeddings e recuperação de informações. A ideia é comparar a direção de dois vetores, e não apenas a distância direta entre eles.

A fórmula da similaridade do cosseno é:

similaridade = produtoEscalar(vetorA, vetorB) / (modulo(vetorA) * modulo(vetorB))
A função deve:

- receber duas listas de double;
- verificar se as duas listas possuem o mesmo tamanho;
- lançar uma exceção caso os vetores tenham tamanhos diferentes;
- calcular o produto escalar entre os dois vetores;
- calcular o módulo de cada vetor;
- retornar um valor double representando a similaridade;
- tratar o caso em que algum vetor tenha módulo igual a zero.*/

import 'dart:math';

double calcularSimilaridadeCosseno(
    List<double> vetorA,
    List<double> vetorB) {

  if (vetorA.length != vetorB.length) {
    throw ArgumentError(
      'Os vetores devem possuir o mesmo tamanho.'
    );
  }

  double produtoEscalar = 0;
  double moduloA = 0;
  double moduloB = 0;

  for (int i = 0; i < vetorA.length; i++) {
    produtoEscalar += vetorA[i] * vetorB[i];

    moduloA += vetorA[i] * vetorA[i];

    moduloB += vetorB[i] * vetorB[i];
  }

  moduloA = sqrt(moduloA);
  moduloB = sqrt(moduloB);

  if (moduloA == 0 || moduloB == 0) {
    throw ArgumentError(
      'Os vetores não podem ter módulo zero.'
    );
  }

  double similaridade =
      produtoEscalar / (moduloA * moduloB);

  return similaridade;
}

void main() {
  List<double> textoA = [1.0, 2.0, 3.0];
  List<double> textoB = [2.0, 4.0, 6.0];

  double similaridade =
      calcularSimilaridadeCosseno(
        textoA,
        textoB,
      );

  print(similaridade);
}

/*
Valores próximos de 1.0 indicam vetores muito parecidos.
Valores próximos de 0.0 indicam pouca relação.
Valores negativos indicam direções opostas.
*/