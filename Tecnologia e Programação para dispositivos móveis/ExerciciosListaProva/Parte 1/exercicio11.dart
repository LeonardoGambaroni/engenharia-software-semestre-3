//Escreva um programa que receba uma lista de preços e aplique 10% de desconto em todos os valores. Ao final, exiba a nova lista de preços.

void main(){
  List<double>preco = [100, 25, 40];
  List<double>novo_preco = [];

  for(int i = 0; i < preco.length; i++){
    double desconto = preco[i] * 0.1;
    double novo_valor = preco[i] - desconto;

    novo_preco.add(novo_valor);
  }

  print(novo_preco);
}