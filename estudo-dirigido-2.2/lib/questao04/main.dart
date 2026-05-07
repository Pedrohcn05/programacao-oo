void main() {
  // Criando conta poupança
  ContaPoupanca poupanca = ContaPoupanca('Maria', 1000);

  // Criando conta corrente
  ContaCorrente corrente = ContaCorrente('João', 2000);

  // Depositando valores
  poupanca.depositar(500);
  corrente.depositar(1000);

  print('');

  // Aplicando rendimento
  poupanca.aplicarRendimento();
  corrente.aplicarRendimento();

  print('');

  // Exibindo saldo final
  print('--- Conta Poupança ---');
  poupanca.exibirSaldo();

  print('');

  print('--- Conta Corrente ---');
  corrente.exibirSaldo();
}
