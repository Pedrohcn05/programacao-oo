class Carro {
  String modelo;
  Motor motor;

  // Construtor com validação
  Carro(this.modelo, this.motor) {
    if (modelo.isEmpty) {
      throw ArgumentError("O modelo não pode ser vazio.");
    }
    if (motor == null) {
      throw ArgumentError("Motor inválido.");
    }
  }

  // Exibir carro completo
  void exibirCarro() {
    print("Modelo: $modelo");
    print("Motor:");
    motor.exibirMotor();
    print("----------------------");
  }
}
