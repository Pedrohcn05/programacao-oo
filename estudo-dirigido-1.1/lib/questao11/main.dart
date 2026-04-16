void main() {
  try {
    // Criando 2 triângulos diferentes
    Triangulo t1 = Triangulo(3, 4, 5, "*");
    Triangulo t2 = Triangulo(5, 5, 6, "#");

    List<Triangulo> triangulos = [t1, t2];

    for (var t in triangulos) {
      t.exibirResumo();

      print("Desenho à esquerda:");
      t.desenharEsquerda();

      print("\nDesenho centralizado:");
      t.desenharCentralizado();

      print("======================\n");
    }

  } catch (e) {
    print("Erro: $e");
  }
}
