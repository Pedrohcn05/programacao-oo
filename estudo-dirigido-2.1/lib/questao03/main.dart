void main() {
  Veiculo v = Veiculo("Toyota", "Corolla", 2020);
  Carro c = Carro("Honda", "Civic", 2022, 4);

  print("Veículo:");
  v.exibirFicha();

  print("\nCarro:");
  c.exibirFicha();
}
