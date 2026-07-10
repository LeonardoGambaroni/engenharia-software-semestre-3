//Escreva um programa que receba uma data no formato dd/mm/aaaa e exiba separadamente o dia, o mês e o ano.

void main(){
  String data = '19/07/2006';

  List<String>partes = data.split('/');

  String dia = partes[0];
  String mes = partes[1];
  String ano = partes[2];

  print('Dia: ${dia}');
  print('Mes: ${mes}');
  print('Ano: ${ano}');
}