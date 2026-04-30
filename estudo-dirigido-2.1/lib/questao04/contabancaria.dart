class ContaBancaria {
  String titular;
  double saldo;

  // Construtor
  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print("Depósito de R\$ $valor realizado.");
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de R\$ $valor realizado.");
    } else {
      print("Saldo insuficiente.");
    }
  }

  void exibirSaldo() {
    print("Titular: $titular");
    print("Saldo: R\$ $saldo");
  }
}
