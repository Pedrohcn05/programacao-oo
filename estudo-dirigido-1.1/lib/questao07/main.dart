void main() {
  try {
    // Instanciando exatamente 2 contadores
    Contador c1 = Contador(5);
    Contador c2 = Contador(0);

    // Operações com o primeiro contador
    c1.exibirValor();
    c1.incrementar();
    c1.incrementar();
    c1.decrementar();
    c1.exibirValor();

    // Operações com o segundo contador
    c2.exibirValor();
    c2.decrementar(); // não pode ficar negativo
    c2.incrementar();
    c2.incrementar();
    c2.zerar();
    c2.exibirValor();
  } catch (e) {
    print("Erro: $e");
  }
}
