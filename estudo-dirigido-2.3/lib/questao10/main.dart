void main() {
  ListaGenerica<Ligavel> lista =
      ListaGenerica<Ligavel>();

  lista.adicionar(
    Smartphone(
      'Samsung',
      'Galaxy S24',
      'Android',
    ),
  );

  lista.adicionar(
    Smartphone(
      'Apple',
      'iPhone 15',
      'iOS',
    ),
  );

  lista.adicionar(
    Notebook(
      'Dell',
      'Inspiron',
      16,
    ),
  );

  lista.adicionar(
    Notebook(
      'Lenovo',
      'ThinkPad',
      32,
    ),
  );

  lista.adicionar(
    Televisao(
      'LG',
      'OLED55',
      55,
    ),
  );

  print('--- Lista de dispositivos ---');
  lista.imprimirItens();

  print('\n--- Operações dos dispositivos ---');

  for (var dispositivo in lista.obterItens()) {
    dispositivo.ligar();
    dispositivo.desligar();

    print('');
  }
}
