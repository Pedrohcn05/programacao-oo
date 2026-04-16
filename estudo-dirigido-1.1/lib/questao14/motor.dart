class Motor {
  int potencia;
  String tipo;

  // Construtor com validação
  Motor(this.potencia, this.tipo) {
    if (potencia <= 0) {
      throw ArgumentError("A potência deve ser maior que 0.");
    }
    if (tipo.isEmpty) {
      throw ArgumentError("O tipo não pode ser vazio.");
    }
  }

  // Exibir dados do motor
  void exibirMotor() {
    print("Potência: $potencia cv");
    print("Tipo: $tipo");
  }
}
