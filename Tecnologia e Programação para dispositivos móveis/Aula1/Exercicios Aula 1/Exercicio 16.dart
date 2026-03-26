//EXERCICIO 16
int tamanhoOuZero(String? s) {
  if (s == null){
    return 0;
  }
  
  return s.length;
}

void main () {
  print(tamanhoOuZero(null));
  print(tamanhoOuZero('Leo'));
}
