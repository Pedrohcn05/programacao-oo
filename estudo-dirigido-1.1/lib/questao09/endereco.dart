class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  int cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep) {
    if (rua.isEmpty) {
      throw ArgumentError("Rua não pode ser vazia.");
    }
    if (numero <= 0) {
      throw ArgumentError("Número deve ser maior que 0.");
    }
    if (bairro.isEmpty) {
      throw ArgumentError("Bairro não pode ser vazio.");
    }
    if (cidade.isEmpty) {
      throw ArgumentError("Cidade não pode ser vazia.");
    }
    if (estado.isEmpty) {
      throw ArgumentError("Estado não pode ser vazio.");
    }
    if (cep <= 0) {
      throw ArgumentError("CEP inválido.");
    }
  }

  String formatarCep() {
    String cepStr = cep.toString().padLeft(8, '0');
    return "${cepStr.substring(0, 5)}-${cepStr.substring(5)}";
  }

  void exibirEndereco() {
    print("Rua: $rua, Nº $numero");
    print("Bairro: $bairro");
    print("Cidade: $cidade - $estado");
    print("CEP: ${formatarCep()}");
  }
}
