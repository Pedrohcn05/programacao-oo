void main() {
  // Criando os objetos
  var ana = Aluno(
    'Ana',
    19,
    'A001',
    'ADS',
  );

  var bruno = Aluno(
    'Bruno',
    22,
    'A002',
    'Engenharia de Software',
  );

  var carla = Professor(
    'Carla',
    38,
    'POO',
    2000.00,
  );

  var diego = Professor(
    'Diego',
    41,
    'Banco de Dados',
    1900.00,
  );

  var elisa = Coordenador(
    'Elisa',
    45,
    'Tecnologia',
    15,
  );

  // Lista genérica usando a interface
  ListaGenerica<Apresentavel> pessoas =
      ListaGenerica<Apresentavel>();

  // Adicionando objetos
  pessoas.adicionar(ana);
  pessoas.adicionar(bruno);
  pessoas.adicionar(carla);
  pessoas.adicionar(diego);
  pessoas.adicionar(elisa);

  // Imprimindo usando imprimirItens()
  print('--- imprimirItens() ---');
  pessoas.imprimirItens();

  // Loop chamando exibirDados()
  print('\n--- Método exibirDados() ---');

  for (var pessoa in pessoas.obterItens()) {
    pessoa.exibirDados();
  }
}
