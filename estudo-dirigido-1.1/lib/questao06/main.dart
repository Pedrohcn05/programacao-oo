void main() {
  var p = Produto("Caneta", 2, 15);
  print(p.total());
}

class Produto {
  String nome;
  double preco;
  int qtd;

  Produto(this.nome, this.preco, this.qtd);

  double total() {
    double desconto = qtd > 10 ? 0.1 : 0;
    return preco * qtd * (1 - desconto);
  }
}
