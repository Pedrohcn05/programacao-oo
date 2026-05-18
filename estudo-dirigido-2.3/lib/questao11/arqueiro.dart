class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(
    String nome,
    int vida,
    int nivel,
    int forca,
    this.flechas,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar() {
    if (flechas > 0) {
      flechas--;
      print('$nome disparou uma flecha!');
    } else {
      print('$nome está sem flechas!');
    }
  }

  @override
  String toString() {
    return 'Arqueiro -> Nome: $nome, Vida: $vida, '
        'Nível: $nivel, Força: $forca, Flechas: $flechas';
  }
}
