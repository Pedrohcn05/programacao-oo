void main() {
  // Criando os objetos
  var showRock = IngressoVip(
    'Show Rock',
    200.00,
    80.00,
  );

  var teatroInfantil = IngressoPromocional(
    'Teatro Infantil',
    100.00,
    20.00,
  );

  var festivalJazz = IngressoCamarote(
    'Festival Jazz',
    300.00,
    50.00,
    'Setor A',
  );

  var cinemaEspecial = IngressoPromocional(
    'Cinema Especial',
    60.00,
    15.00,
  );

  var showPop = IngressoVip(
    'Show Pop',
    180.00,
    70.00,
  );

  // Lista genérica usando a interface
  ListaGenerica<Calculavel> ingressos =
      ListaGenerica<Calculavel>();

  // Adicionando objetos
  ingressos.adicionar(showRock);
  ingressos.adicionar(teatroInfantil);
  ingressos.adicionar(festivalJazz);
  ingressos.adicionar(cinemaEspecial);
  ingressos.adicionar(showPop);

  // Imprimindo usando imprimirItens()
  print('--- imprimirItens() ---');
  ingressos.imprimirItens();

  // Loop chamando valorFinal()
  print('\n--- Valores finais ---');

  for (var ingresso in ingressos.obterItens()) {
    print(
      'Valor final: R\$ '
      '${ingresso.valorFinal().toStringAsFixed(2)}',
    );
  }
}
