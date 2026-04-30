void main() {
  // Funcionário comum
  Funcionario f = Funcionario("João", 3000.0);

  // Gerente
  Gerente g = Gerente("Maria", 8000.0, "Financeiro");

  print("Funcionário:");
  f.exibirDados();

  print("\nGerente:");
  g.exibirDados();
}
