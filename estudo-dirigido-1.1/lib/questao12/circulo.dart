class Circulo {
  double raio;
  String cor;

  // Constante PI
  static const double PI = 3.14;

  // Construtor com validação
  Circulo(this.raio, this.cor) {
    if (raio <= 0) {
      throw ArgumentError("O raio deve ser maior que 0.");
    }
    if (cor.isEmpty) {
      throw ArgumentError("A cor não pode ser vazia.");
    }
  }

  // Área
  double calcularArea() {
    return PI * raio * raio;
  }

  // Perímetro (circunferência)
  double calcularPerimetro() {
    return 2 * PI * raio;
  }

  // Resumo
  void exibirResumo() {
    print("Raio: $raio");
    print("Cor: $cor");
    print("Área: ${calcularArea().toStringAsFixed(2)}");
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}");
    print("----------------------");
  }
}
