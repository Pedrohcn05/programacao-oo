void main() {
  try {
    // Instanciando exatamente 3 datas
    Data d1 = Data(1, 1, 2024);
    Data d2 = Data(15, 8, 2023);
    Data d3 = Data(31, 12, 2025);

    // Exibindo as datas
    d1.exibirData();
    d2.exibirData();
    d3.exibirData();
  } catch (e) {
    print("Erro: $e");
  }
}
