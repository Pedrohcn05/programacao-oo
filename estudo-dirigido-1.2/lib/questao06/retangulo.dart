class Retangulo {
  double _largura;
  double _altura;
 
  // Construtor padrão com parâmetros
  Retangulo(this._largura, this._altura);
 
  // Construtor sem parâmetros (quadrado 1x1)
  Retangulo.semParametros()
      : _largura = 1,
        _altura = 1;
 
  // Construtor nomeado para quadrado
  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado;
 
  // Calcular área
  double calcularArea() {
    return _largura * _altura;
  }
 
  // Calcular perímetro
  double calcularPerimetro() {
    return 2 * (_largura + _altura);
  }
 
  // Exibir dados
  void exibirDados() {
    print('Largura: $_largura');
    print('Altura: $_altura');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
  }
}
