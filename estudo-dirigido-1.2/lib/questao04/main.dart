void main() {
  // Com apelido informado
  var u1 = Usuario('Maria', 'maria@email.com', 'Mari');
  u1.exibirPerfil();
 
  print('---');
 
  // Sem apelido (usa o nome como padrão)
  var u2 = Usuario('Carlos', 'carlos@email.com');
  u2.exibirPerfil();
}
