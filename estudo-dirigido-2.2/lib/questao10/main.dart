void main() {
  // Criando objetos
  Smartphone smartphone = Smartphone(
    'Samsung',
    'Galaxy S24',
    'Android',
  );

  Notebook notebook = Notebook(
    'Dell',
    'Inspiron',
    16,
  );

  // Chamando métodos do smartphone
  smartphone.ligar();
  smartphone.desligar();

  print('----------------------');

  // Chamando métodos do notebook
  notebook.ligar();
  notebook.desligar();
}
