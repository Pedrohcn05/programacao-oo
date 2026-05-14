void main() {
  // Criando os objetos
  var corolla = Carro(
    'Toyota',
    'Corolla',
    2022,
    4,
  );

  var civic = Carro(
    'Honda',
    'Civic',
    2021,
    4,
  );

  var fazer = Moto(
    'Yamaha',
    'Fazer',
    2023,
    250,
  );

  var biz = Moto(
    'Honda',
    'Biz',
    2020,
    125,
  );

  var volvo = Caminhao(
    'Volvo',
    'VM',
    2019,
    12,
  );

  // Lista genérica usando a interface
  ListaGenerica<Fichavel> veiculos =
      ListaGenerica<Fichavel>();

  // Adicionando objetos
  veiculos.adicionar(corolla);
  veiculos.adicionar(civic);
  veiculos.adicionar(fazer);
  veiculos.adicionar(biz);
  veiculos.adicionar(volvo);

  // Imprimindo usando imprimirItens()
  print('--- imprimirItens() ---');
  veiculos.imprimirItens();

  // Loop chamando exibirFicha()
  print('\n--- Método exibirFicha() ---');

  for (var veiculo in veiculos.obterItens()) {
    veiculo.exibirFicha();
  }
}
