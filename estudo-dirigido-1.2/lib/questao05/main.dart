void main() {
  // Conta comum
  var c1 = Conta.bancaria('001', 'Ana');
  c1.exibirResumo();
  c1.depositar(100);
  c1.exibirResumo();
 
  print('---');
 
  // Conta VIP
  var c2 = Conta.vip('002', 'Bruno', 500);
  c2.exibirResumo();
  c2.sacar(200);
  c2.exibirResumo();
}
