//EXERCICIO 12
void main (){
  String texto = "leonardo";

  Map<String, int> frequencia = {};

  for (int i = 0; i < texto.length; i++) {

    String letra = texto[i];

    if (letra == ' ') {
      continue;
    }

    if (frequencia.containsKey(letra)) {

      frequencia[letra] = frequencia[letra]! + 1;

    } else {

      frequencia[letra] = 1;

    }

  }

  print(frequencia);
}
