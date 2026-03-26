abstract class MeioDeTransporte {  
   int identificador;
   String fabricante;
   String modelo;
   double carga;
   String tipoCombustivel;
  
  MeioDeTransporte(this.identificador, this.fabricante, this.modelo, this.carga, this.tipoCombustivel);
  
  void imprimir();
  
}

abstract class Terrestre extends MeioDeTransporte {
  String placa;
  String chassi;
  String renavam;
  
  Terrestre(
   int identificador,
   String fabricante,
   String modelo,
   double carga,
   String tipoCombustivel,
   this.placa, this.chassi, this.renavam) : super (identificador, fabricante, modelo, carga, tipoCombustivel);
  
  void imprimir ();
}

class Automovel extends Terrestre {
  int numeroPortas;
  
  Automovel(
    int identificador,
    String fabricante,
    String modelo,
    double carga,
    String tipoCombustivel,
    String placa,
    String chassi,
    String renavam, this.numeroPortas) : super (identificador, fabricante, modelo, carga, tipoCombustivel, placa, chassi, renavam);
  
  @override
  void imprimir (){
    print('\nAutomóvel ');
    print('Identificador: ${identificador}');
    print('Fabricante: ${fabricante}');
    print('Modelo: ${modelo}');
    print('Capacidade de Carga máxima: ${carga}');
    print('Tipo de Combustivel: ${tipoCombustivel}');
    print('Placa: ${placa}');
    print('Chassi: ${chassi}');
    print('Renavam: ${renavam}');
    print('Numero de portas: ${numeroPortas}');
  }
}

class Motocicleta extends Terrestre {
  int cilindradas;
  
  Motocicleta(    
    int identificador,
    String fabricante,
    String modelo,
    double carga,
    String tipoCombustivel,
    String placa,
    String chassi,
    String renavam, this.cilindradas) : super (identificador, fabricante, modelo, carga, tipoCombustivel, placa, chassi, renavam);
  
  @override
  void imprimir(){
    print('\nMotocicletas');
    print('Identificador: ${identificador}');
    print('Fabricante: ${fabricante}');
    print('Modelo: ${modelo}');
    print('Capacidade de Carga máxima: ${carga}');
    print('Tipo de Combustivel: ${tipoCombustivel}');
    print('Placa: ${placa}');
    print('Chassi: ${chassi}');
    print('Renavam: ${renavam}');
    print('Cilindradas: ${cilindradas}');
  }
}

class Aeronave extends MeioDeTransporte {
  
  double envergaduraAsas;
  
  Aeronave(   
    int identificador,
    String fabricante,
    String modelo,
    double carga,
    String tipoCombustivel, this.envergaduraAsas) : super (identificador, fabricante, modelo, carga, tipoCombustivel);
  
  @override
  void imprimir(){
    print('\nAeronaves');
    print('Identificador: ${identificador}');
    print('Fabricante: ${fabricante}');
    print('Modelo: ${modelo}');
    print('Capacidade de Carga máxima: ${carga}');
    print('Tipo de Combustivel: ${tipoCombustivel}');
    print('Envergadura das asas: ${envergaduraAsas}');
  }
}

class Embarcacao extends MeioDeTransporte {
  int numeroContainers;
  
  Embarcacao(
    int identificador,
    String fabricante,
    String modelo,
    double carga,
    String tipoCombustivel, this.numeroContainers) : super (identificador, fabricante, modelo, carga, tipoCombustivel);
  
  @override
  void imprimir(){
    print('\nEmbarcação');
    print('Identificador: ${identificador}');
    print('Fabricante: ${fabricante}');
    print('Modelo: ${modelo}');
    print('Capacidade de Carga máxima: ${carga}');
    print('Tipo de Combustivel: ${tipoCombustivel}');
    print('Numero de Containers que pode carregar: ${numeroContainers}');
  }
}


//FAZER UM MAIN QUE CIRE UMA FROTA.
void main(){
  Automovel c1 = Automovel (1, 'Toyota', 'Yaris', 500, 'Gasolina', 'RXC-7235', 'ABC',
'REN123', 4);
  
  Motocicleta m1 = Motocicleta (2, 'Yamaha', 'XJ6', 200, 'Gasolina', 'TDG-8741', 'CHA', 
'REN256', 600);
  
  Aeronave a1 = Aeronave(3, 'Boeing', '737', 20000, 'Querosene', 35.8);
  
  Embarcacao e1 = Embarcacao(4, 'Maersk', 'Cargo Master', 500000, 'Diesel', 300);
  
  c1.imprimir();
  m1.imprimir();
  a1.imprimir();
  e1.imprimir();
}
