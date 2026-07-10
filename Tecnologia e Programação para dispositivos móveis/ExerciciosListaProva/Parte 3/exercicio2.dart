/* Crie uma classe chamada Fracao com os atributos numerador e denominador. A classe deve representar uma fração matemática e permitir a soma entre duas frações usando o MMC dos denominadores.

Atenção às regras de soma de frações: quando os denominadores são iguais, conserva-se o denominador e somam-se apenas os numeradores. Quando os denominadores são diferentes, é necessário encontrar um denominador comum, normalmente usando o MMC, antes de somar as frações.

A classe deve:

- possuir um construtor que receba numerador e denominador;
- não permitir que o denominador seja zero;
- ter um método chamado somar que receba outra Fracao como parâmetro;
- usar o MMC dos denominadores para calcular a soma corretamente;
- retornar uma nova Fracao como resultado da soma;
- ter um método para exibir a fração no formato numerador/denominador.*/

class Fracao {
  int numerador;
  int denominador;

  Fracao(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw ArgumentError(
        'O denominador não pode ser zero.'
      );
    }
  }

  int calcularMDC(int a, int b) {
    a = a.abs();
    b = b.abs();

    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }

    return a;
  }

  int calcularMMC(int a, int b) {
    return (a * b).abs() ~/ calcularMDC(a, b);
  }

  Fracao somar(Fracao outra) {
    if (denominador == outra.denominador) {
      return Fracao(
        numerador + outra.numerador,
        denominador,
      );
    }

    int mmc = calcularMMC(
      denominador,
      outra.denominador,
    );

    int novoNumerador =
        (mmc ~/ denominador) * numerador +
        (mmc ~/ outra.denominador) *
            outra.numerador;

    return Fracao(novoNumerador, mmc);
  }

  @override
  String toString() {
    return '$numerador/$denominador';
  }
}

void main() {
  Fracao f1 = Fracao(1, 2);
  Fracao f2 = Fracao(1, 3);

  Fracao resultado = f1.somar(f2);

  print(resultado);
}