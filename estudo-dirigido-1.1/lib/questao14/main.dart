void main() {
  print(Carro(Motor(150)));
}

class Motor {
  int potencia;

  Motor(this.potencia);
}

class Carro {
  Motor motor;

  Carro(this.motor);

  String toString() => "Motor: ${motor.potencia}";
}
