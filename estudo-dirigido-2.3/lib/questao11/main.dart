void main() {
  Guerreiro guerreiro =
      Guerreiro('Thoran', 120, 5, 20, 15);

  Arqueiro arqueira =
      Arqueiro('Lia', 80, 4, 15, 10);

  Mago mago =
      Mago('Merlin', 70, 6, 10, 50);

  Goblin goblin =
      Goblin('Gob', 40, 2, 100, 25);

  Dragao dragao =
      Dragao('Ignis', 200, 10, 1000, 35);

  ListaGenerica<Atacavel> atacantes =
      ListaGenerica<Atacavel>();

  ListaGenerica<Magico> magicos =
      ListaGenerica<Magico>();

  ListaGenerica<Flamejante> flamejantes =
      ListaGenerica<Flamejante>();

  ListaGenerica<Personagem> personagens =
      ListaGenerica<Personagem>();

  atacantes.adicionar(guerreiro);
  atacantes.adicionar(arqueira);
  atacantes.adicionar(mago);

  magicos.adicionar(mago);

  flamejantes.adicionar(dragao);

  personagens.adicionar(guerreiro);
  personagens.adicionar(arqueira);
  personagens.adicionar(mago);
  personagens.adicionar(goblin);
  personagens.adicionar(dragao);

  print('--- Lista de personagens ---');
  personagens.imprimirItens();

  print('\n--- Ações de ataque ---');

  for (var atacante in atacantes.obterItens()) {
    atacante.atacar();
  }

  print('\n--- Magias ---');

  for (var magico in magicos.obterItens()) {
    magico.lancarMagia();
  }

  print('\n--- Ataques flamejantes ---');

  for (var flamejante in flamejantes.obterItens()) {
    flamejante.soltarFogo();
  }

  print('\n--- Estado atualizado dos personagens ---');
  personagens.imprimirItens();
}
