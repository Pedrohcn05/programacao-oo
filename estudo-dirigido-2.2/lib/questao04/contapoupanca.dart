class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo)
      : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.01; // 1%
    print('Rendimento de 1% aplicado na Conta Poupança.');
  }
}
