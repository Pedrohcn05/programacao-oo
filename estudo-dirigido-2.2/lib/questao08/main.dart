void main() {
  // Criando objetos
  LivroDigital livroDigital =
      LivroDigital('Dart para Iniciantes', 'João Silva', 5.8);

  LivroFisico livroFisico =
      LivroFisico('Programação Orientada a Objetos', 'Maria Souza', 320);

  // Exibindo informações
  livroDigital.exibirInformacoes();
  livroFisico.exibirInformacoes();
}
