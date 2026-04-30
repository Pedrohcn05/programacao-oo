void main() {
  ContaPoupanca poupanca = ContaPoupanca("Ana", 1000.0);
  ContaCorrente corrente = ContaCorrente("Carlos", 1000.0);

  print("Conta Poupança:");
  poupanca.exibirSaldo();
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  print("\nConta Corrente:");
  corrente.exibirSaldo();
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}
