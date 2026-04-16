class Semaforo {
  String corAtual; // "vermelho", "verde", "amarelo"
  int tempoRestante;

  // Construtor com validação
  Semaforo(this.corAtual, this.tempoRestante) {
    if (!_corValida(corAtual)) {
      throw ArgumentError("Cor inválida.");
    }
    if (tempoRestante <= 0) {
      throw ArgumentError("Tempo deve ser maior que 0.");
    }
  }

  // Validação de cor
  bool _corValida(String cor) {
    return cor == "vermelho" || cor == "verde" || cor == "amarelo";
  }

  // Retorna emoji da cor
  String getEmoji() {
    switch (corAtual) {
      case "vermelho":
        return "🔴";
      case "verde":
        return "🟢";
      case "amarelo":
        return "🟡";
      default:
        return "";
    }
  }

  // Trocar cor seguindo a ordem
  void trocarCor() {
    if (corAtual == "vermelho") {
      corAtual = "verde";
      tempoRestante = 4;
    } else if (corAtual == "verde") {
      corAtual = "amarelo";
      tempoRestante = 2;
    } else if (corAtual == "amarelo") {
      corAtual = "vermelho";
      tempoRestante = 5;
    }

    print("Cor alterada para ${getEmoji()} ($corAtual)");
  }

  // Reduz tempo
  void reduzirTempo() {
    tempoRestante--;

    if (tempoRestante <= 0) {
      trocarCor();
    }
  }

  // Exibir estado
  void exibirEstado() {
    print("Semáforo: ${getEmoji()} ($corAtual) | Tempo: $tempoRestante");
  }
}
