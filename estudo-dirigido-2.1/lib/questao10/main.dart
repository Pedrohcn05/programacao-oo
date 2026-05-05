void main() {
  var dispositivo = Dispositivo('Genérico', 'X1');
  dispositivo.ligar();

  print('---');

  var celular = Smartphone('Samsung', 'Galaxy S21', 'Android');
  celular.ligar();
}
