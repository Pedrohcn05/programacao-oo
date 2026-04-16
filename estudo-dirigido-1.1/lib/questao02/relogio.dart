class Relogio {
  int hora;
  int minuto;
  int segundo;

  // Construtor com validação
  Relogio(this.hora, this.minuto, this.segundo) {
    if (hora < 0 || hora > 23) {
      throw ArgumentError("Hora deve estar entre 0 e 23.");
    }
    if (minuto < 0 || minuto > 59) {
      throw ArgumentError("Minuto deve estar entre 0 e 59.");
    }
    if (segundo < 0 || segundo > 59) {
      throw ArgumentError("Segundo deve estar entre 0 e 59.");
    }
  }

  // Método para exibir o horário formatado
  void exibirHorario() {
    String h = hora.toString().padLeft(2, '0');
    String m = minuto.toString().padLeft(2, '0');
    String s = segundo.toString().padLeft(2, '0');

    print("$h:$m:$s");
  }
}
