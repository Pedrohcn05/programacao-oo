void main() {
  try {
    // Instanciando exatamente 3 relógios
    Relogio r1 = Relogio(10, 5, 9);
    Relogio r2 = Relogio(23, 59, 59);
    Relogio r3 = Relogio(0, 0, 0);

    // Exibindo os horários
    r1.exibirHorario();
    r2.exibirHorario();
    r3.exibirHorario();
  } catch (e) {
    print("Erro: $e");
  }
}
