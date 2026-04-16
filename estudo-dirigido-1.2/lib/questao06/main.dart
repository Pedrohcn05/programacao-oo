void main() {
  // Retângulo normal
  var r1 = Retangulo(4, 3);
  r1.exibirDados();
 
  print('---');
 
  // Retângulo 1x1 (sem parâmetros)
  var r2 = Retangulo.semParametros();
  r2.exibirDados();
 
  print('---');
 
  // Quadrado com lado definido
  var r3 = Retangulo.quadrado(5);
  r3.exibirDados();
}
