void main() {
  ListaGenerica<Sonoro> lista = ListaGenerica<Sonoro>();

  lista.adicionar(Cachorro('Rex'));
  lista.adicionar(Gato('Mimi'));
  lista.adicionar(Passaro('Piu'));
  lista.adicionar(Vaca('Mimosa'));
  lista.adicionar(Ovelha('Dolly'));

  print('--- Lista de animais ---');
  lista.imprimirItens();

  print('\n--- Sons dos animais ---');
  for (var animal in lista.obterItens()) {
    animal.emitirSom();
  }
}
