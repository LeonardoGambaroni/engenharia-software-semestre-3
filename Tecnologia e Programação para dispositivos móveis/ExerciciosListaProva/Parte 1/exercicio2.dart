//Escreva um programa que receba duas notas de um aluno, calcule a média aritmética e exiba se o aluno foi aprovado, 
//em recuperação ou reprovado. Considere aprovado quem tiver média maior ou igual a 6, recuperação entre 4 e 5.9, e reprovado abaixo de 4.


void main(){
  double nota1 = 7;
  double nota2 = 5;
  double media = (nota1 + nota2)/ 2;

  if (media >= 6){
    print('Aprovado!!');
  } else if(media > 4 && media < 6){
    print('Recuperação!!');
  } else{
    print('Reprovado!!');
  }
}