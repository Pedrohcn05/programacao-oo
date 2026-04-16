class Playlist {
  String nome;
  Musica musica1;
  Musica musica2;
  Musica musica3;

  // Construtor com validação
  Playlist(this.nome, this.musica1, this.musica2, this.musica3) {
    if (nome.isEmpty) {
      throw ArgumentError("O nome da playlist não pode ser vazio.");
    }
  }

  // Exibir playlist completa
  void exibirPlaylist() {
    print("🎵 Playlist: $nome");
    print("======================");

    musica1.exibirMusica();
    musica2.exibirMusica();
    musica3.exibirMusica();
  }

  // Calcular duração total
  int calcularDuracaoTotal() {
    return musica1.duracaoSegundos +
        musica2.duracaoSegundos +
        musica3.duracaoSegundos;
  }

  // Tocar playlist
  void tocarPlaylist() {
    print("▶️ Tocando playlist: $nome");
    print("----------------------");

    print("Tocando: ${musica1.titulo} - ${musica1.artista}");
    print("Tocando: ${musica2.titulo} - ${musica2.artista}");
    print("Tocando: ${musica3.titulo} - ${musica3.artista}");
  }
}
