void main() {
  // Criando os objetos
  var ana = ContaPoupanca(
    'Ana',
    1000.00,
  );

  var bruno = ContaCorrente(
    'Bruno',
    1500.00,
  );

  var carla = ContaInvestimento(
    'Carla',
    5000.00,
  );

  var diego = ContaPoupanca(
    'Diego',
    2500.00,
  );

  var elisa = ContaCorrente(
    'Elisa',
    800.00,
  );

  // Lista genérica usando a interface
  ListaGenerica<Rentavel> contas =
      ListaGenerica<Rentavel>();

  // Adicionando objetos
  contas.adicionar(ana);
  contas.adicionar(bruno);
  contas.adicionar(carla);
  contas.adicionar(diego);
  contas.adicionar(elisa);

  // Antes do rendimento
  print('--- Saldos antes do rendimento ---');
  contas.imprimirItens();

  // Aplicando rendimento
  for (var conta in contas.obterItens()) {
    conta.aplicarRendimento();
  }

  // Depois do rendimento
  print('\n--- Saldos após rendimento ---');
  contas.imprimirItens();
}
