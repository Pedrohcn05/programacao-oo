class ContaCorrente extends ContaBancaria {
  double taxaRendimento = 0.05; // 5%

  ContaCorrente(String titular, double saldo)
      : super(titular, saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
    print("Rendimento de 5% aplicado.");
  }
}
