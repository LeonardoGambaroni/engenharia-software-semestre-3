//EXERCICIO 14
int maximo (List<int> nums){
  int maior = 0;
  for (int i = 0; i < nums.length; i++){
    if (nums[i] > maior){
      maior = nums[i];
    }
  }
  return maior;
}

void main (){
  List<int> numero = [1,2,3,4,5,6];
  
  print(maximo(numero));
}
