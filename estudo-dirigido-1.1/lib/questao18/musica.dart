class Musica {
  String titulo;
  String artista;
  int duracaoSegundos;

  // Construtor com validação
  Musica(this.titulo, this.artista, this.duracaoSegundos) {
    if (titulo.isEmpty) {
      throw ArgumentError("O título não pode ser vazio.");
    }
    if (artista.isEmpty) {
      throw ArgumentError("O artista não pode ser vazio.");
    }
    if (duracaoSegundos <= 0) {
      throw ArgumentError("A duração deve ser maior que 0.");
    }
  }

  void exibirMusica() {
    print("Título: $titulo");
    print("Artista: $artista");
    print("Duração: $duracaoSegundos segundos");
    print("----------------------");
  }
}
