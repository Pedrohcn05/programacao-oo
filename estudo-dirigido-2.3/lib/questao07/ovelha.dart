class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome faz: Bééé');
  }

  @override
  String toString() {
    return 'Ovelha: $nome';
  }
}
