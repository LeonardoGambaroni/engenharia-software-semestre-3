/*criar uma matriz,
.mostrar o elemento da linha 2 coluna 3
.soma da diagonal principal
*/

void main(){
  List<List<int>> matriz = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ];

  print(matriz[1][2]);

  int somaDiagonal = 
    matriz[0][0] +
    matriz[1][1] +
    matriz[2][2];

  print("Soma diagonal principal: $somaDiagonal");

}