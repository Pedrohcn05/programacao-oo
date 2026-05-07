class ContaBancaria {
  String titular;
  double saldo;

  // Construtor
  ContaBancaria(this.titular, this.saldo);

  // Método para depositar
  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado.');
  }

  // Método para sacar
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado.');
    } else {
      print('Saldo insuficiente.');
    }
  }

  // Método para exibir saldo
  void exibirSaldo() {
    print('Titular: $titular');
    print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
  }
}
