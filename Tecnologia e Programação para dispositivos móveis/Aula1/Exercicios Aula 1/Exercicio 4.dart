//EXERCICIO 4
int MaiorDeTres (int a, int b, int c) {
  if (a > b && a > c){
    return a;
  }
  else if (b > a && b > c){
    return b;
  }
  return c;
}

void main (){
  print(MaiorDeTres(9,10,11));
}
