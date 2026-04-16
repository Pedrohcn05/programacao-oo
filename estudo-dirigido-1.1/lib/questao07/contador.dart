class Contador {
  int valor;

  // Construtor com validação
  Contador(this.valor) {
    if (valor < 0) {
      throw ArgumentError("O valor inicial deve ser maior ou igual a 0.");
    }
  }

  // Incrementar
  void incrementar() {
    valor++;
    print("Incrementado: $valor");
  }

  // Decrementar
  void decrementar() {
    if (valor > 0) {
      valor--;
    }
    print("Decrementado: $valor");
  }

  // Zerar
  void zerar() {
    valor = 0;
    print("Contador zerado.");
  }

  // Exibir valor
  void exibirValor() {
    print("Valor atual: $valor");
    print("----------------------");
  }
}
