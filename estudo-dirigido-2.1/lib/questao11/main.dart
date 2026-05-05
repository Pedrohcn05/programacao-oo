void main() {
  var guerreiro = Guerreiro('Thoran', 100, 5, 20, 10);
  var arqueiro = Arqueiro('Lia', 80, 4, 15, 3);
  var mago = Mago('Merlin', 70, 6, 18, 30);
  var goblin = Goblin('Gob', 50, 2, 20, 12);
  var dragao = Dragao('Ignis', 150, 10, 100, 25);

  print('--- Ações ---');
  guerreiro.atacar(goblin);
  arqueiro.atacar(goblin);
  mago.lancarMagia(dragao);
  dragao.soltarFogo(guerreiro);

  print('\n--- Status Final ---');
  guerreiro.exibirStatus();
  arqueiro.exibirStatus();
  mago.exibirStatus();
  goblin.exibirStatus();
  dragao.exibirStatus();
}
