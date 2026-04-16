void main() {
  try {
    // Criando músicas
    Musica m1 = Musica("Shape of You", "Ed Sheeran", 240);
    Musica m2 = Musica("Blinding Lights", "The Weeknd", 200);
    Musica m3 = Musica("Levitating", "Dua Lipa", 210);

    // Criando playlist
    Playlist playlist = Playlist("Minhas Favoritas", m1, m2, m3);

    // Exibindo dados
    playlist.exibirPlaylist();

    // Duração total
    int total = playlist.calcularDuracaoTotal();
    print("⏱ Duração total: $total segundos");

    // Tocando playlist
    playlist.tocarPlaylist();

  } catch (e) {
    print("Erro: $e");
  }
}
