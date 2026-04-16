void main() {
  try {
    // 2 quadrados diferentes
    Quadrado q1 = Quadrado(4, "*");
    Quadrado q2 = Quadrado(3, "#");

    // 2 quadrados iguais
    Quadrado q3 = Quadrado(5, "@");
    Quadrado q4 = Quadrado(5, "@");

    List<Quadrado> quadrados = [q1, q2, q3, q4];

    // Exibindo resumo e desenho
    for (var q in quadrados) {
      q.exibirResumo();
      q.desenhar();
      print("======================");
    }

    // Verificando igualdade
    print("q1 == q2? ${q1.ehIgual(q2)}");
    print("q3 == q4? ${q3.ehIgual(q4)}");

  } catch (e) {
    print("Erro: $e");
  }
}
