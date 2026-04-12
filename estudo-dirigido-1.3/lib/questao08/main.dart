void main() {
  // Criando cupom
  CupomDesconto cupom = CupomDesconto("DESCONTO10", 10.0, true);

  // Alterando dados com setters
  cupom.codigo = "PROMO20";
  cupom.percentual = 20.0;

  // Testando cálculo de desconto
  double valorCompra = 200.0;
  double desconto = cupom.calcularDesconto(valorCompra);

  print("Valor da compra: R\$ $valorCompra");
  print("Desconto aplicado: R\$ $desconto");
  print("Valor final: R\$ ${valorCompra - desconto}");

  // Exibindo dados finais
  cupom.exibirCupom();
}
