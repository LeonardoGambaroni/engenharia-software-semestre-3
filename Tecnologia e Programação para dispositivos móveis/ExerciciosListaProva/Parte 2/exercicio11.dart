//Crie uma função que receba uma lista de produtos representados por mapas e retorne apenas os produtos com preço maior que R$ 100,00.

List<Map<String, dynamic>>maiorQue100 (List<Map<String, dynamic>>produtos){

  List<Map<String, dynamic>> resultado = [];
  for(int i = 0; i < produtos.length; i++){
    if(produtos[i]['preco'] > 100){
      resultado.add(produtos[i]);
    }
  }
  return resultado;
}


void main(){
  List<Map<String, dynamic>>produtos = [
    {'nome' : 'Mouse', 'preco' : 200},
    {'nome' : 'Teclado', 'preco' : 300},
    {'nome' : 'Monitor', 'preco': 1200},
    {'nome' : 'mousepad', 'preco' : 80},
    {'nome' : 'fone', 'preco' : 90},
  ];

  print(maiorQue100(produtos));
}