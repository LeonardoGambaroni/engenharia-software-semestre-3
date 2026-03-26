//EXERCICIO 9
void main (){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  
  List<int> pares = [];
  
  for (int i = 0; i < numeros.length; i++){
    if(numeros[i] % 2 == 0){
      pares.add(numeros[i]);
    }
  }
  
  print(pares);
 
}
