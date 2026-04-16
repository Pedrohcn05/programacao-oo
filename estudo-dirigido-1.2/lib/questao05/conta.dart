class Conta {
  String _numero;
  String _titular;
  double _saldo;
 
  // Construtor nomeado: conta bancária comum (saldo = 0)
  Conta.bancaria(this._numero, this._titular) : _saldo = 0;
 
  // Construtor nomeado: conta VIP (saldo inicial informado)
  Conta.vip(this._numero, this._titular, this._saldo);
 
  // Depositar valor
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }
 
  // Sacar valor
  void sacar(double valor) {
    if (valor <= _saldo && valor > 0) {
      _saldo -= valor;
    } else {
      print('Saldo insuficiente ou valor inválido!');
    }
  }
 
  // Exibir resumo da conta
  void exibirResumo() {
    print('Número: $_numero');
    print('Titular: $_titular');
    print('Saldo: R\$ $_saldo');
  }
}
 
