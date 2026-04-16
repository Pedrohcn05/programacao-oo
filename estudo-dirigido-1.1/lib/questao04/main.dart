void main() {
  // Instanciando 1 lâmpada
  Lampada lampada = Lampada();

  // Simulando uso
  lampada.exibirEstado();

  lampada.ligar();
  lampada.exibirEstado();

  lampada.desligar();
  lampada.exibirEstado();

  lampada.ligar();
  lampada.desligar();

  lampada.ligar();
  lampada.desligar();

  lampada.ligar();
  lampada.desligar();

  // Quinta vez (vai queimar)
  lampada.ligar();
  lampada.exibirEstado();

  // Tentando ligar após queimada
  lampada.ligar();
  lampada.exibirEstado();
}
