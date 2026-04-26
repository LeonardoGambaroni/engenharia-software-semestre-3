// Mostrar todos os numeros primos de 1 a 100

void main(){
  print("Numeros primos de 1 a 100: ");
  
  for (int i = 2; i <= 100; i++){
    int divisores = 0;
    
    for (int j = 1; j <= i; j++){
      if (i % j == 0){
        divisores++;
      }
    }
    if (divisores == 2){
      print(i);
    }
  }
  
}