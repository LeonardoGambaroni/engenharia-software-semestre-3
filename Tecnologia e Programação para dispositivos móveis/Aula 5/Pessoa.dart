class Pessoa {
  final String nome;
  final double peso;
  final double altura;
  double? _imc;
  
  Pessoa(this.nome, this.peso, this.altura){
    this._calcularImc();
  }
  // acrescentar _("underline") no nome do método modifica a acessibilidade dele, 
  // tornando-o privado,
  // para que este método possa ser chamado apenas dentro da classe.
  void _calcularImc(){
    this._imc = (this.peso / (this.altura * this.altura));
  } 

  // metodo para permitir que o imc seja lido de fora pela instância.
  double? get imc => _imc;
}