void main() {
  try {
    // Criando 1 semáforo (inicia no vermelho)
    Semaforo semaforo = Semaforo("vermelho", 5);

    // Simulando funcionamento por ciclos
    for (int i = 0; i < 15; i++) {
      semaforo.exibirEstado();
      semaforo.reduzirTempo();
    }

  } catch (e) {
    print("Erro: $e");
  }
}
