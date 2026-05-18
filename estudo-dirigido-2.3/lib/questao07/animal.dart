import 'lista_generica.dart';

abstract class Animal {
  String nome;

  Animal(this.nome);

  @override
  String toString() {
    return 'Animal: $nome';
  }
}
