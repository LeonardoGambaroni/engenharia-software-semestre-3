/* Crie uma função chamada calcularErroMedioQuadratico que receba duas listas de double: uma lista com valores reais e outra lista com valores previstos por um modelo. A função deve calcular o Erro Médio Quadrático, também conhecido como MSE (Mean Squared Error).

Esse cálculo é muito usado em Inteligência Artificial e Aprendizado de Máquina para medir o quanto as previsões de um modelo estão distantes dos valores corretos. Quanto menor o erro médio quadrático, melhor tende a ser o desempenho do modelo naquele conjunto de dados.

A fórmula do erro médio quadrático é:

MSE = soma((valorReal - valorPrevisto)^2) / quantidadeDeValores
A função deve:

receber duas listas de double;
verificar se as duas listas possuem o mesmo tamanho;
lançar uma exceção caso as listas tenham tamanhos diferentes;
lançar uma exceção caso as listas estejam vazias;
calcular a diferença entre cada valor real e seu respectivo valor previsto;
elevar cada diferença ao quadrado;
retornar a média desses erros quadráticos.*/

double calcularErroMedioQuadratico(
    List<double> valoresReais,
    List<double> valoresPrevistos) {

  if (valoresReais.length != valoresPrevistos.length) {
    throw ArgumentError(
      'As listas devem possuir o mesmo tamanho.'
    );
  }

  if (valoresReais.isEmpty ||
      valoresPrevistos.isEmpty) {
    throw ArgumentError(
      'As listas não podem estar vazias.'
    );
  }

  double somaErros = 0;

  for (int i = 0; i < valoresReais.length; i++) {
    double diferenca =
        valoresReais[i] - valoresPrevistos[i];

    somaErros += diferenca * diferenca;
  }

  double mse =
      somaErros / valoresReais.length;

  return mse;
}

void main() {
  List<double> valoresReais = [
    10.0,
    20.0,
    30.0
  ];

  List<double> valoresPrevistos = [
    12.0,
    18.0,
    33.0
  ];

  double mse =
      calcularErroMedioQuadratico(
        valoresReais,
        valoresPrevistos,
      );

  print(mse);
}

/*
O erro é elevado ao quadrado porque valores positivos e 
negativos poderiam se cancelar ao serem somados.

Exemplo:
+2 e -2 somariam 0.
Mas:
2² = 4
(-2)² = 4

Assim todos os erros contribuem
positivamente para o cálculo.
*/