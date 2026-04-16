class Cofrinho {
  double saldo;
  int quantidadeDepositos;

  // Construtor com validação
  Cofrinho(this.saldo)
      : quantidadeDepositos = 0 {
    if (saldo < 0) {
      throw ArgumentError("O saldo inicial deve ser maior ou igual a 0.");
    }
  }

  // Depositar
  void depositar(double valor) {
    if (valor <= 0) {
      print("Valor inválido para depósito.");
      return;
    }

    saldo += valor;
    quantidadeDepositos++;

    print("Depósito de R\$ ${valor.toStringAsFixed(2)} realizado.");
  }

  // Quebrar cofrinho
  void quebrar() {
    print("Cofrinho quebrado!");
    print("Total acumulado: R\$ ${saldo.toStringAsFixed(2)}");
    print("Quantidade de depósitos: $quantidadeDepositos");

    // Zera o cofrinho
    saldo = 0;
    quantidadeDepositos = 0;
  }

  // Exibir saldo
  void exibirSaldo() {
    print("Saldo atual: R\$ ${saldo.toStringAsFixed(2)}");
    print("Depósitos realizados: $quantidadeDepositos");
    print("----------------------");
  }
}
