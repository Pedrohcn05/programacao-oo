void main() {
  var s = Semaforo();
  s.mudar();
  print(s.cor);
}

class Semaforo {
  String cor = "Vermelho";

  void mudar() {
    if (cor == "Vermelho") {
      cor = "Verde";
    } else if (cor == "Verde") {
      cor = "Amarelo";
    } else {
      cor = "Vermelho";
    }
  }
}
