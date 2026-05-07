void main() {
  // Criando ingresso VIP
  IngressoVip vip = IngressoVip(
    'Show de Rock',
    150.0,
    50.0,
  );

  // Criando ingresso promocional
  IngressoPromocional promocional = IngressoPromocional(
    'Teatro',
    100.0,
    20.0,
  );

  // Exibindo valores finais
  print('--- Ingresso VIP ---');
  print('Evento: ${vip.evento}');
  print('Valor final: R\$ ${vip.valorFinal().toStringAsFixed(2)}');

  print('');

  print('--- Ingresso Promocional ---');
  print('Evento: ${promocional.evento}');
  print(
    'Valor final: R\$ ${promocional.valorFinal().toStringAsFixed(2)}',
  );
}
