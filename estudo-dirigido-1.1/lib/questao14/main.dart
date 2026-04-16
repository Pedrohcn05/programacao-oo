void main() {
  try {
    // Criando motores
    Motor m1 = Motor(150, "Gasolina");
    Motor m2 = Motor(200, "Diesel");

    // Criando carros (cada um com seu motor)
    Carro c1 = Carro("Civic", m1);
    Carro c2 = Carro("Hilux", m2);

    // Exibindo dados completos
    c1.exibirCarro();
    c2.exibirCarro();

  } catch (e) {
    print("Erro: $e");
  }
}
