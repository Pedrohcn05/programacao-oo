void main() {
  try {
    // Instanciando 1 produto
    Produto produto = Produto(1, "Notebook", 3500.00, 3);

    // Exibindo resumo inicial
    produto.exibirResumo();

    // Alterando os atributos
    produto.codigo = 2;
    produto.nome = "Mouse Gamer";
    produto.precoUnitario = 150.00;
    produto.quantidade = 12;

    // Validando novamente após alteração
    produto.validar();

    // Exibindo novo resumo
    produto.exibirResumo();
  } catch (e) {
    print("Erro: $e");
  }
}
