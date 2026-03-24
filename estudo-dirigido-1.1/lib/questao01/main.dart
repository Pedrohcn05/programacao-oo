
import 'pessoa.dart';

void main() {
  var pessoas = [
    Pessoa("Ana", 20),
    Pessoa("João", 30),
    Pessoa("Maria", 25)
  ];

  for (var p in pessoas) {
    p.exibirDados();
  }
}
