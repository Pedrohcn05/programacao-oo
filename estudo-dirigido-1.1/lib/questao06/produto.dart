class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  int quantidade;

  // Construtor com validação
  Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade) {
    validar();
  }

  // Método para validar os dados
  void validar() {
    if (codigo <= 0) {
      throw ArgumentError("Código deve ser maior que 0.");
    }
    if (nome.isEmpty) {
      throw ArgumentError("Nome não pode ser vazio.");
    }
    if (precoUnitario <= 0) {
      throw ArgumentError("Preço unitário deve ser maior que 0.");
    }
    if (quantidade <= 0) {
      throw ArgumentError("Quantidade deve ser maior que 0.");
    }
  }

  // Método para calcular desconto
  double calcularDesconto() {
    double totalBruto = precoUnitario * quantidade;

    if (quantidade >= 20) {
      return totalBruto * 0.15;
    } else if (quantidade >= 10) {
      return totalBruto * 0.10;
    } else if (quantidade >= 5) {
      return totalBruto * 0.05;
    } else {
      return 0.0;
    }
  }

  // Método para calcular total com desconto
  double calcularTotal() {
    double totalBruto = precoUnitario * quantidade;
    return totalBruto - calcularDesconto();
  }

  // Método para exibir resumo
  void exibirResumo() {
    print("Código: $codigo");
    print("Nome: $nome");
    print("Preço Unitário: R\$ ${precoUnitario.toStringAsFixed(2)}");
    print("Quantidade: $quantidade");
    print("Desconto: R\$ ${calcularDesconto().toStringAsFixed(2)}");
    print("Total: R\$ ${calcularTotal().toStringAsFixed(2)}");
    print("----------------------");
  }
}
