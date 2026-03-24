void main() {
  var e = Endereco("Rua B", "SP");
  print(Pessoa("Pedro", e));
}

class Endereco {
  String rua, cidade;

  Endereco(this.rua, this.cidade);

  String toString() => "$rua - $cidade";
}

class Pessoa {
  String nome;
  Endereco endereco;

  Pessoa(this.nome, this.endereco);

  String toString() => "$nome | $endereco";
}
