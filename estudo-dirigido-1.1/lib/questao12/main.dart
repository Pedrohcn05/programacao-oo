void main() {
  try {
    // Instanciando exatamente 3 círculos
    Circulo c1 = Circulo(2.5, "Azul");
    Circulo c2 = Circulo(4.0, "Vermelho");
    Circulo c3 = Circulo(1.8, "Verde");

    // Exibindo os resumos
    c1.exibirResumo();
    c2.exibirResumo();
    c3.exibirResumo();
  } catch (e) {
    print("Erro: $e");
  }
}
