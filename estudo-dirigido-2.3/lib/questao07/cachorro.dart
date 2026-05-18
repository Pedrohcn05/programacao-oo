class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome faz: Au au');
  }

  @override
  String toString() {
    return 'Cachorro: $nome';
  }
}
