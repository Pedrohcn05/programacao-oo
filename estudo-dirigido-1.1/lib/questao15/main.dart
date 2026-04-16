void main() {
  try {
    // Instanciando 1 cofrinho
    Cofrinho cofrinho = Cofrinho(0);

    // Realizando depósitos
    cofrinho.exibirSaldo();

    cofrinho.depositar(10);
    cofrinho.depositar(25.5);
    cofrinho.depositar(5);

    cofrinho.exibirSaldo();

    cofrinho.depositar(100);

    cofrinho.exibirSaldo();

    // Quebrando o cofrinho
    cofrinho.quebrar();

    // Verificando após quebrar
    cofrinho.exibirSaldo();

  } catch (e) {
    print("Erro: $e");
  }
}
