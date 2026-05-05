void main() {
  var ingresso = Ingresso('Show de Rock', 100.0);
  ingresso.exibirResumo();

  print('---');

  var vip = IngressoVip('Show de Rock', 100.0, 50.0);
  vip.exibirResumo();
  print('Valor final VIP: R\$ ${vip.valorFinal().toStringAsFixed(2)}');
}
