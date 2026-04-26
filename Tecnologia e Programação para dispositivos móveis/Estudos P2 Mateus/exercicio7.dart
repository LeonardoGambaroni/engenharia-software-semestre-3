/* recebe 3 notas e calcula a media.
. media >= 7, aprovado
.media < 7, reprovado
*/
void main(){
  double nota1 = 10;
  double nota2 = 4;
  double nota3 = 6;

  double media = (nota1 + nota2 + nota3) / 3;

  print(media);

  if (media >= 7){
    print("Aprovado");
  }
  else{
    print("Reprovado");
  }

}