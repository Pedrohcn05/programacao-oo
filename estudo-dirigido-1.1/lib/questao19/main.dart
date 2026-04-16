void main() {
  try {
    // Criando cômodos
    Comodo c1 = Comodo("Sala", 20.5);
    Comodo c2 = Comodo("Quarto", 15.0);
    Comodo c3 = Comodo("Cozinha", 10.0);

    // Criando casa
    Casa casa = Casa("Pedro", c1, c2, c3);

    // Exibindo dados
    casa.exibirCasa();

    // Área total
    double total = casa.calcularAreaTotal();
    print("📏 Área total da casa: $total m²");

  } catch (e) {
    print("Erro: $e");
  }
}
