void main() {
  // Criando os objetos
  Animal cachorro = Cachorro('Rex');
  Animal gato = Gato('Mingau');
  Animal passaro = Passaro('Piu');
  Animal vaca = Vaca('Mimosa');

  // Lista de animais
  List<Animal> animais = [cachorro, gato, passaro, vaca];

  // Fazendo todos emitirem som
  for (var animal in animais) {
    animal.emitirSom();
  }
}
