
abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) throw Exception("Nome não pode ser vazio");
    if (vida < 0) throw Exception("Vida não pode ser negativa");
    if (nivel < 1) throw Exception("Nível deve ser >= 1");
  }

  void receberDano(int dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
  }

  bool estaVivo() => vida > 0;

  void exibirStatus();
}
