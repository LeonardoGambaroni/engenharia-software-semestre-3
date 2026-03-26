//EXERCICIO 13
bool ehPrimo (int n){
  if (n <= 1){
    return false;
  }
  for (int i = 2; i < n; i++){
    if (n % i == 0){
      return false;
    }
  }
  return true;
}

void main (){
  print(ehPrimo(2));
  print(ehPrimo(3));
  print(ehPrimo(12));
  print(ehPrimo(15));
}
