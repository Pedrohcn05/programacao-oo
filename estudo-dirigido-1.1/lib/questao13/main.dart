void main() {
  var p = Pedido();
  p.add(Produto("Caneta", 2, 5));
  print(p.total());
}

class Produto {
  String nome;
  double preco;
  int qtd;

  Produto(this.nome, this.preco, this.qtd);

  double total() => preco * qtd;
}

class Pedido {
  List<Produto> lista = [];

  void add(Produto p) => lista.add(p);

  double total() {
    double t = 0;
    for (var p in lista) {
      t += p.total();
    }
    return t;
  }
}
