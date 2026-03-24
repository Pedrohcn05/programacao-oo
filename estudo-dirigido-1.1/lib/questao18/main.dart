void main() {
  var p = Playlist();
  p.add(Musica(200));
  print(p.total());
}

class Musica {
  int duracao;

  Musica(this.duracao);
}

class Playlist {
  List<Musica> lista = [];

  void add(Musica m) => lista.add(m);

  int total() {
    int t = 0;
    for (var m in lista) {
      t += m.duracao;
    }
    return t;
  }
}
