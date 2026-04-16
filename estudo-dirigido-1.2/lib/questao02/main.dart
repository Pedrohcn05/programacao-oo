void main() {
  var p = Produto('Caderno', 15.50, 10);
 
  p.exibirFicha();
  p.repor(5);
  p.exibirFicha();
  p.vender(8);
  p.exibirFicha();
  p.vender(10); // tentativa com estoque insuficiente
}
