void main() {
  try {
    // Instanciando exatamente 3 pessoas
    Pessoa p1 = Pessoa("João", 25);
    Pessoa p2 = Pessoa("Maria", 30);
    Pessoa p3 = Pessoa("Carlos", 18);

    // Exibindo os dados
    p1.exibirDados();
    p2.exibirDados();
    p3.exibirDados();
  } catch (e) {
    print("Erro: $e");
  }
}
