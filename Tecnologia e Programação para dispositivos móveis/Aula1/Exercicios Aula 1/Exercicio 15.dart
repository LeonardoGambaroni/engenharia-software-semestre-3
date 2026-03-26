//EXERCICIO 15
List<int> aplicar(List<int> nums, int Function(int) f) {

  List<int> resultado = [];

  for (int i = 0; i < nums.length; i++) {

    resultado.add(f(nums[i]));

  }

  return resultado;

}

void main() {

  List<int> numeros = [1, 2, 3, 4];

  
  var duplicado = aplicar(numeros, (n) {
    return n * 2;
  });

  print(duplicado);

  
  var quadrado = aplicar(numeros, (n) {
    return n * n;
  });

  print(quadrado);

}
