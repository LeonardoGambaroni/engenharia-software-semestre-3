//Crie uma função que receba um número inteiro n e retorne uma lista com os n primeiros números da sequência de Fibonacci.

List<int> fibonacci(int n){
  List<int> lista = [];

  int a = 0;
  int b = 1;

  for(int i = 0; i < n; i++){
    lista.add(a);

    int proximo = a + b;
    a = b;
    b = proximo;
  }

  return lista;
}

void main(){
  print(fibonacci(10));
}