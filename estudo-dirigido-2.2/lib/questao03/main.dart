void main() {
  // Criando um carro
  Carro carro = Carro('Toyota', 'Corolla', 2022, 4);

  // Criando uma moto
  Moto moto = Moto('Honda', 'CB 500', 2021, 500);

  // Exibindo fichas
  carro.exibirFicha();

  print('');

  moto.exibirFicha();
}
