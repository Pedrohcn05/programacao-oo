class Data {
  int dia;
  int mes;
  int ano;

  // Construtor com validação
  Data(this.dia, this.mes, this.ano) {
    if (dia < 1 || dia > 31) {
      throw ArgumentError("Dia deve estar entre 1 e 31.");
    }
    if (mes < 1 || mes > 12) {
      throw ArgumentError("Mês deve estar entre 1 e 12.");
    }
    if (ano <= 0) {
      throw ArgumentError("Ano deve ser maior que 0.");
    }
  }

  // Método para exibir a data formatada
  void exibirData() {
    String d = dia.toString().padLeft(2, '0');
    String m = mes.toString().padLeft(2, '0');

    print("$d/$m/$ano");
  }
}
