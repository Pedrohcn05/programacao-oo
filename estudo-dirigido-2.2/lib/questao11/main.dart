void main() {
  // Personagens
  Guerreiro thoran = Guerreiro("Thoran", 100, 5, 20, "Aço");
  Arqueiro lia = Arqueiro("Lia", 80, 4, 15, 3);
  Mago merlin = Mago("Merlin", 70, 6, 18, 30);

  Goblin gob = Goblin("Gob", 50, 2, 100, 10);
  Dragao ignis = Dragao("Ignis", 150, 10, 500, 35);

  // Ações
  thoran.atacar(gob);
  lia.atacar(gob);
  merlin.lancarMagia(ignis);
  ignis.soltarFogo(thoran);

  print("\n===== STATUS FINAL =====\n");

  thoran.exibirStatus();
  lia.exibirStatus();
  merlin.exibirStatus();
  gob.exibirStatus();
  ignis.exibirStatus();

  print("");

  gob.exibirRecompensa();
  ignis.exibirRecompensa();
}
