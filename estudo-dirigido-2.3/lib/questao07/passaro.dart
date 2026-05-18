class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome faz: Piu piu');
  }

  @override
  String toString() {
    return 'Pássaro: $nome';
  }
}
