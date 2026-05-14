class IngressoPromocional extends Ingresso
    implements Calculavel {

  double desconto;

  IngressoPromocional(
    String evento,
    double valor,
    this.desconto,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }

  @override
  String toString() {
    return 'Ingresso Promocional | '
        'Evento: $evento | '
        'Valor original: R\$ ${valor.toStringAsFixed(2)} | '
        'Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

class IngressoCamarote extends Ingresso
    implements Calculavel {

  double taxaServico;
  String localizacao;

  IngressoCamarote(
    String evento,
    double valor,
    this.taxaServico,
    this.localizacao,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return 'Ingresso Camarote | '
        'Evento: $evento | '
        'Localização: $localizacao | '
        'Valor original: R\$ ${valor.toStringAsFixed(2)} | '
        'Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

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
